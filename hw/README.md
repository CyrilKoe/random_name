# Hardware part
## Folders
⋅⋅+ rtl \
⋅⋅⋅ Contains the system verilog code of the system : \
⋅⋅⋅⋅⋅+ fifo.sv \
⋅⋅⋅⋅⋅+ parity_checker.sv \
⋅⋅⋅⋅⋅+ sr_sw_beh_ram.sv : Single read single write behavioral RAM \
⋅⋅⋅⋅⋅+ top.sv \
⋅⋅⋅⋅⋅+ types_pkg.sv : Defining enums used in the project \
⋅⋅+ simulation \
⋅⋅⋅ Contains the scripts to run the simulation \
⋅⋅+ tb \ 
⋅⋅⋅ Contains the testbench scripts and logs \
⋅⋅⋅⋅⋅+ test_0x : Test case folder \
⋅⋅⋅⋅⋅+ fifo_tb.sv \
⋅⋅⋅⋅⋅+ parity_checker_tb.sv \
⋅⋅⋅⋅⋅+ top_tb.sv \
⋅⋅⋅⋅⋅+ generate_transaction.py : Script generating a simulation testcase log and vectors