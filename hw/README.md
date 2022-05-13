# Hardware part
## Folders
- __rtl__ : Contains the system verilog code of the system :
  - *fifo.sv*
  - *parity_checker.sv*
  - *sr_sw_beh_ram.sv* : Single read single write behavioral RAM
  - *top.sv*
  - *types_pkg.sv* : Defining enums used in the project
- __simulation__ : Contains the scripts to run the simulation
  - *compile.f* : Compile list for system verilog sources
  - *Makefile* : Used to call simulation and verification
  - *wave.do* : Contains wave instructions for when opening questasim
- __tb__ : Contains the testbench scripts and logs
  - __test_0*__ : Test case folder
  - *fifo_tb.sv*
  - *parity_checker_tb.sv*
  - *top_tb.sv*
  - *generate_transactions.py* : Script generating a simulation testcase log and test vectors

## Scripts
### generate_transactions.py
This scripts should be run from the __tb__ folder since it writes output files when launched. It generates random input transactions for the Top and uses a python model of the FIFO to write expected output transactions. A comprehensive log and the generated transactions vector are generated in output. This transaction vector is then read by *top_tb.sv* to verify the hardware description with simulation.
### Makefile
This Makefile can be used to: \
`make` Compile and launch questa with the default testbench macros. Run it to launch the case given in the exercise (filling then emptying). \
`make compile_with_args DEPTH=4` Compile and launch questa with overriden macros (DATA_WIDTH, DEPTH, PARITY_MODE, PARITY_CHOICE, TRANSACTION_INPUT_PATH). Run it to try changing the sim parameters on an other test. \
*Example :* `make compile_with_args DATA_WIDTH=8 TRANSACTIONS_FOLDER=test_03`
`make verif` generates a random test vector in the *test_tmp* folder PARITY_MODE=EVEN