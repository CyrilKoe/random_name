

class transaction():
    def __init__(self, push_data_cycle, push_valid_cycle, push_grant_cycle, data, pop_valid_cycle, pop_grant_cycle):
        self.push_data_cycle = push_data_cycle
        self.push_valid_cycle = push_valid_cycle
        self.push_grant_cycle = push_grant_cycle
        self.data = data
        self.pop_valid_cycle = pop_valid_cycle
        self.pop_grant_cycle = pop_grant_cycle

    def print(self):
        print(self.push_data_cycle, self.push_valid_cycle, self.push_grant_cycle, self.data, self.pop_valid_cycle, self.pop_grant_cycle)

class DUT():
    def __init__(self, DATA_WIDTH, DEPTH, PARITY_MODE, PARITY_BIT_CHOICE):
        self.DEPTH = DEPTH
        self.transactions = []
        self.fifo_free_cycle = 0
        self.fifo_empty_cycle = 0
    
    def get_size(self, cycle):
        size = 0
        for transaction in self.transactions:
            if (transaction.push_grant_cycle < cycle):
                size += 1
            if (transaction.pop_grant_cycle < cycle):
                size -= 1
        return size

    def add_transaction(self, push_data_cycle, push_data):
        # Find when the data will be available to push
        push_wait = 0
        push_valid_cycle = push_data_cycle + push_wait
        push_grant_cycle = max(self.fifo_free_cycle, push_valid_cycle)

        # Find when the data will be available to pull
        pop_valid_cycle = max(push_grant_cycle + 1, self.fifo_empty_cycle)
        pop_wait = 1
        pop_grant_cycle = pop_valid_cycle + pop_wait

        new_transaction = transaction(push_data_cycle, push_valid_cycle, push_grant_cycle, push_data, pop_valid_cycle, pop_grant_cycle)
        self.transactions.append(new_transaction)

        self.fifo_empty_cycle = pop_grant_cycle+1
        if(self.get_size == self.DEPTH-1):
            self.fifo_free_cycle = pop_grant_cycle+1
        
        return push_grant_cycle + 1
    
    def print(self):
        for transaction in self.transactions:
            transaction.print()
    
    def log(self):
        for cycle in range(0, 20):
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
                    print(begin_str,"popped")    
            print("End of cycle ["+str(cycle) +"] size is "+str(self.get_size(cycle+1)))

DATA_WIDTH = 8
DEPTH = 4
PARITY_MODE = "ODD"
PARITY_BIT_CHOICE = "MSB"

dut = DUT(DATA_WIDTH, DEPTH, PARITY_MODE, PARITY_BIT_CHOICE)
cycle = 0
while cycle < 15:
    data = cycle
    cycle = dut.add_transaction(cycle, data)

print(dut.log())
print(dut.print())