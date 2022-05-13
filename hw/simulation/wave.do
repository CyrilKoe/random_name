onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench signals}
add wave -noupdate -label cycle_ctr /top_tb/cycle_ctr
add wave -noupdate -label expected_grant_cycle /top_tb/expected_grant_cycle
add wave -noupdate -label clk /top_tb/clk
add wave -noupdate -label reset_n /top_tb/reset_n
add wave -noupdate -label push_valid_i /top_tb/push_valid_i
add wave -noupdate -label push_data_i /top_tb/push_data_i
add wave -noupdate -label push_grant_o /top_tb/push_grant_o
add wave -noupdate -label pop_valid_o /top_tb/pop_valid_o
add wave -noupdate -label pop_data_o /top_tb/pop_data_o
add wave -noupdate -label pop_grant_i /top_tb/pop_grant_i
add wave -noupdate -divider {Parity check}
add wave -noupdate /top_tb/DUT/valid_o
add wave -noupdate /top_tb/DUT/push_grant_o
add wave -noupdate -divider Memory
add wave -noupdate -label words -expand /top_tb/DUT/fifo_mem/RAM/words
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {71 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1 ns}

run 10000ns