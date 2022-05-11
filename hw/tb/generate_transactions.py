import sys
import random
import os

def decimal_to_binary(n, length):
    res = bin(n).replace("0b", "")
    while(len(res) < length):
        res = "0" + res
    return res

# Hold a full transaction (from push to pop)
class transaction():
    def __init__(self, push_data_cycle, push_valid_cycle, push_grant_cycle, data, pop_valid_cycle, pop_grant_cycle, checked):
        self.push_data_cycle = push_data_cycle
        self.push_valid_cycle = push_valid_cycle
        self.push_grant_cycle = push_grant_cycle
        self.data = data
        self.pop_valid_cycle = pop_valid_cycle
        self.pop_grant_cycle = pop_grant_cycle
        self.checked = checked

    # Return a csv line of the transaction
    def to_string(self):
        sep = ' : '
        if(self.checked):
            return str(self.push_data_cycle)+sep+str(self.push_valid_cycle)+sep+str(self.push_grant_cycle)+sep+self.data+sep+str(self.pop_valid_cycle)+sep+str(self.pop_grant_cycle)
        else:
            return str(self.push_data_cycle)+sep+str(self.push_valid_cycle)+sep+str(self.push_grant_cycle)+sep+self.data+sep+str(-1)+sep+str(-1)

# Simulate design
class DUT():
    def __init__(self, DATA_WIDTH, DEPTH, PARITY_MODE, PARITY_BIT_CHOICE):
        self.DATA_WIDTH = DATA_WIDTH
        self.DEPTH = DEPTH
        self.PARITY_MODE = PARITY_MODE
        self.PARITY_BIT_CHOICE = PARITY_BIT_CHOICE
        self.transactions = [] # Transactions history
        self.fifo_free_cycle = 0 # Next cycle when (size < DEPTH)
        self.fifo_empty_cycle = 0 # Next cycle when (size == 0)
        self.arrival_times = [] # Sampled times in memory (push_grant_cycle)
        self.departure_times = [] # Evicted time from FIFO
    
    # Find the size of the FIFO based on the arrival and departure times
    def get_size(self, cycle):
        size = 0
        for arrival_time in self.arrival_times:
            if arrival_time <= cycle:
                size += 1
        for departure_time in self.departure_times:
            if departure_time <= cycle:
                size -= 1
        return size
    
    # How many cycles to wait (p = bernouilli probability of success (=waiting))
    def trials_before_success(self, p):
        wait = 0
        while random.random() < p:
            wait += 1
        return wait
    
    # Find the next time a packet will leave
    def next_departure_cycle(self, cycle):
        for departure in self.departure_times:
            if departure >= cycle:
                return departure
    
    def count_set_bits(self, n):
        count = 0
        while (n):
            count += n & 1
            n >>= 1
        return count

    def check(self, data):
        if self.PARITY_MODE == "EVEN":
            return (self.count_set_bits(data) % 2 == 0)
        if self.PARITY_MODE == "ODD":
            return (self.count_set_bits(data) % 2 == 1)
        print("Unknown parity mode")
        sys.exit(1)
    
    def gen_data(self, valid=True):
        data = random.randint(0, 2**(self.DATA_WIDTH-4))
        parity_bit = 1 if not self.check(data) else 0
        if self.PARITY_BIT_CHOICE == "MSB":
            return str(parity_bit) + decimal_to_binary(data, self.DATA_WIDTH-1)
        else:
            return decimal_to_binary(data, self.DATA_WIDTH-1) + str(parity_bit)

    # Get a requested push and modelize the full push-pop transaction
    def add_transaction(self, push_data_cycle, push_data, p_wait_push=0.0, p_wait_pop=0.0):
        # Find when the data will be available to push (push_valid), possibility to add an arbitrary delay
        push_wait = self.trials_before_success(p_wait_push)
        push_valid_cycle = push_data_cycle + push_wait

        # Find when the memory will be available (push_grant)
        if(self.get_size(push_valid_cycle) == DEPTH):
            self.fifo_free_cycle = self.next_departure_cycle(cycle)
        push_grant_cycle = max(self.fifo_free_cycle, push_valid_cycle)

        # Find when the data will be available to pull (pop valid)
        pop_valid_cycle = max(push_grant_cycle + 1, self.fifo_empty_cycle)

        # Find when the receiver will be avaleble (pop_grant), possibility to add an arbitrary delay
        checked = self.check(int(push_data, 2))
        if(checked):
            pop_wait = self.trials_before_success(p_wait_pop)
            pop_grant_cycle = pop_valid_cycle + pop_wait
        # If the check is not passed pop_grant directly
        else:
            pop_grant_cycle = pop_valid_cycle

        new_transaction = transaction(push_data_cycle, push_valid_cycle, push_grant_cycle, push_data, pop_valid_cycle, pop_grant_cycle, checked=checked)
        self.transactions.append(new_transaction)

        # Save this packet departure time for evaluating fifo_free_cycle
        self.arrival_times.append(push_grant_cycle + 1)
        self.departure_times.append(pop_grant_cycle + 1)

        # Save this packet exit time to evalute fifo_empty_cycle
        self.fifo_empty_cycle = pop_grant_cycle+1
        
        # Return when the pop interface is free for new data
        return push_grant_cycle + 1
    
    # Stringigy for csv like file
    def to_string(self):
        result = ""
        result += "# DATA_WIDTH="+str(self.DATA_WIDTH)+" DEPTH="+str(self.DEPTH)+" PARITY_MODE="+str(self.PARITY_MODE)+" PARITY_BIT_CHOICE="+str(self.PARITY_BIT_CHOICE)+'\n'
        result += "# push_data_cycle : push_valid_cycle : push_grant_cycle : data : pop_valid_cycle : pop_grant_cycle\n"
        for transaction in self.transactions:
            result += transaction.to_string() + '\n'
        return result
    
    # Log the complete behavior
    def log(self, first_cycle, last_cycle):
        result = ""
        for cycle in range(first_cycle, last_cycle):
            for transaction in self.transactions:
                begin_str = "["+str(cycle)+"] ("+str(transaction.data)+")"
                if transaction.push_data_cycle == cycle:
                    result += begin_str+" arrived at the push interface\n"
                if transaction.push_valid_cycle == cycle:
                    result += begin_str+" ready to be pushed\n"
                if transaction.push_grant_cycle == cycle:
                    result += begin_str+" will be pushed\n"
                if transaction.pop_valid_cycle == cycle:
                    result += begin_str+" ready to be popped\n"
                if transaction.pop_grant_cycle == cycle:
                    result += begin_str+" will be popped\n" 
            result += begin_str+" End of cycle ["+str(cycle) +"] size is "+str(self.get_size(cycle+1))+'\n\n'
        return result

# Simulation parameters
DATA_WIDTH = 8
DEPTH = 4
PARITY_MODE = "ODD"
PARITY_BIT_CHOICE = "MSB"
first_cycle = 2
last_cycle = 100
p_wait_push = 0.25
p_wait_pop = 0.5
output_dir = "test_03"

# Simulation 'engine'
dut = DUT(DATA_WIDTH, DEPTH, PARITY_MODE, PARITY_BIT_CHOICE)

# Simulation loop
cycle = first_cycle
while cycle < last_cycle:
    data = dut.gen_data(valid=True)
    cycle = dut.add_transaction(cycle, data, p_wait_push=p_wait_push, p_wait_pop=p_wait_pop)

# Log and output
transactions_log = dut.log(first_cycle, last_cycle)
transactions_table = dut.to_string()

os.system("rm -r "+output_dir)
os.system("mkdir "+output_dir)
file_log = open(output_dir+"/transactions_log.txt", "w")
file_log.write(transactions_log)
file_log.close()
file_table = open(output_dir+"/transactions_inputs.txt", "w")
file_table.write(transactions_table)
file_table.close()

print("Simulation parameters :")
print("DATA_WIDTH =", DATA_WIDTH)
print("DEPTH =", DEPTH)
print("PARITY_MODE =", PARITY_MODE)
print("PARITY_BIT_CHOICE =", PARITY_BIT_CHOICE)

print("\nDone, files written :")
print("- "+output_dir+"/transactions_log.txt")
print("- "+output_dir+"/transactions_inputs.txt")