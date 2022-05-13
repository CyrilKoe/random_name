# Simulation parameters
DATA_WIDTH = 8
DEPTH = 4
PARITY_MODE = ODD
PARITY_BIT_CHOICE = MSB
TRANSACTIONS_FOLDER= test_03
TRANSACTIONS_INPUT_PATH = \"../tb/$(TRANSACTIONS_FOLDER)/transactions_inputs.txt\"
p_wait_pop = 0.2
p_wait_push = 0.1
p_error_bit = 0.1
last_cycle = 1000

all: compile

# Compile and launch vsim
compile:
	vlib work
	vlog +acc -sv -f compile.f
	vsim top_tb -do wave.do

# Compile with user defined args and launch vsim
compile_with_args:
	vlib work
	vlog +acc -sv -f compile.f "+define+DATA_WIDTH=$(DATA_WIDTH)+define+DEPTH=$(DEPTH)+define+PARITY_MODE=$(PARITY_MODE)+define+PARITY_BIT_CHOICE=$(PARITY_BIT_CHOICE)+define+TRANSACTIONS_INPUT_PATH=$(TRANSACTIONS_INPUT_PATH)"
	vsim top_tb -do wave.do

# Compile with args and the tmp output dir
compile_with_args_tmp_dir:
	vlib work
	vlog +acc -sv -f compile.f "+define+DATA_WIDTH=$(DATA_WIDTH)+define+DEPTH=$(DEPTH)+define+PARITY_MODE=$(PARITY_MODE)+define+PARITY_BIT_CHOICE=$(PARITY_BIT_CHOICE)+define+TRANSACTIONS_INPUT_PATH=\"../tb/test_tmp/transactions_inputs.txt\""
	vsim top_tb -do wave.do

# Run python script to generate transactions
run_python:
	(cd ../tb; python3 generate_transactions.py DATA_WIDTH=$(DATA_WIDTH) DEPTH=$(DEPTH) PARITY_MODE=$(PARITY_MODE) PARITY_BIT_CHOICE=$(PARITY_BIT_CHOICE) last_cycle=$(last_cycle) p_error_bit=$(p_error_bit) p_wait_pop=$(p_wait_pop) p_wait_push=$(p_wait_push) output_dir=test_tmp)

# Automatised verif flow
verif: run_python compile_with_args_tmp_dir
	
clean:
	rm -rf work transcript vsim.wlf ../tb/test_tmp