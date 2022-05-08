

class transaction():
    def __init__(self, push_data_cycle, push_valid_cycle, data):
        self.push_data_cycle = push_data_cycle
        self.push_valid_cycle = push_valid_cycle
        self.data = data

class DUT():
    def __init__(self, DATA_WIDTH, DEPTH, PARITY_MODE, PARITY_BIT_CHOICE):
        self.depth = DEPTH
        self.words = []

    def update(self, push_valid=False, push_data=0, pop_valid=False, pop_data=0):
        transaction = 
        if(len(self.words) < self.DEPTH-1):
            if(push_valid):
                self.words.append(push_data)
        if(len(self.words) > 0):
            if(pop_valid):
                

