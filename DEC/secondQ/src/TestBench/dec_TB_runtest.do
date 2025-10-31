SetActiveLib -work
comp -include "$dsn\src\Decoder.vhd" 
comp -include "$dsn\src\TestBench\dec_TB.vhd" 
asim +access +r TESTBENCH_FOR_dec 
wave 
wave -noreg en
wave -noreg output
wave -noreg input
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\dec_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_dec 
