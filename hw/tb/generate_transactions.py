import sys


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
            return str(self.push_data_cycle)+sep+str(self.push_valid_cycle)+sep+str(self.push_grant_cycle)+sep+str(self.data)+sep+str(self.pop_valid_cycle)+sep+str(self.pop_grant_cycle)
        else:
            return str(self.push_data_cycle)+sep+str(self.push_valid_cycle)+sep+str(self.push_grant_cycle)+sep+str(self.data)+sep+str(-1)+sep+str(-1)

# Simulate design
class DUT():
    def __init__(self, DATA_WIDTH, DEPTH, PARITY_MODE, PARITY_BIT_CHOICE):
        self.DEPTH = DEPTH
        self.PARITY_MODE = PARITY_MODE
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
    
    # Find the next time a packet will leave
    def next_departure_cycle(self, cycle):
        for departure in self.departure_times:
            if departure >= cycle:
                return departure

    def check(self, data):
        if self.PARITY_MODE == "ODD":
            return (data % 2 == 0)
        if self.PARITY_MODE == "EVEN":
            return (data % 2 == 1)
        print("Unknown parity mode")
        sys.exit(1)

    # Get a requested push and modelize the full push-pop transaction
    def add_transaction(self, push_data_cycle, push_data):
        # Find when the data will be available to push (push_valid), possibility to add an arbitrary delay
        push_wait = 0
        push_valid_cycle = push_data_cycle + push_wait

        # Find when the memory will be available (push_grant)
        if(self.get_size(push_valid_cycle) == DEPTH):
            self.fifo_free_cycle = self.next_departure_cycle(cycle)
        push_grant_cycle = max(self.fifo_free_cycle, push_valid_cycle)

        # Find when the data will be available to pull (pop valid)
        print("data arrives", push_data, "fifo_empty", self.fifo_empty_cycle, "min_ready", push_grant_cycle + 1)
        pop_valid_cycle = max(push_grant_cycle + 1, self.fifo_empty_cycle)

        # Find when the receiver will be avaleble (pop_grant), possibility to add an arbitrary delay
        if(self.check(push_data)):
            pop_wait = 1
            pop_grant_cycle = pop_valid_cycle + pop_wait
        # If the check is not passed pop_grant directly
        else:
            pop_grant_cycle = pop_valid_cycle

        new_transaction = transaction(push_data_cycle, push_valid_cycle, push_grant_cycle, push_data, pop_valid_cycle, pop_grant_cycle, checked=self.check(push_data))
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
        for transaction in self.transactions:
            result += transaction.to_string() + '\n'
        return result
    
    # Log the complete behavior
    def log(self, first_cycle, last_cycle):
        for cycle in range(first_cycle, last_cycle):
            for transaction in self.transactions:
                begin_str = "["+str(cycle)+"] ("+str(transaction.data)+")"
                if transaction.push_data_cycle == cycle:
                    print(begin_str,"arrived at the push interface")
                if transaction.push_valid_cycle == cycle:
                    print(begin_str,"ready to be pushed")
                if transaction.push_grant_cycle == cycle:
                    print(begin_str,"will be pushed")
                if transaction.pop_valid_cycle == cycle:
                    print(begin_str,"ready to be popped")   
                if transaction.pop_grant_cycle == cycle:
                    print(begin_str,"will be popped")    
            print("End of cycle ["+str(cycle) +"] size is "+str(self.get_size(cycle+1)))

# Simulation parameters
DATA_WIDTH = 8
DEPTH = 4
PARITY_MODE = "ODD"
PARITY_BIT_CHOICE = "MSB"
first_cycle = 0
last_cycle = 30

# Simulation 'engine'
dut = DUT(DATA_WIDTH, DEPTH, PARITY_MODE, PARITY_BIT_CHOICE)

# Simulation loop
cycle = first_cycle
while cycle < last_cycle:
    data = cycle
    cycle = dut.add_transaction(cycle, data)

# Log and output
dut.log(first_cycle, last_cycle)
print(dut.to_string())