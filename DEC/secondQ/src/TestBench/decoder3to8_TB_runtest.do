SetActiveLib -work
comp -include "$dsn\src\Decoder.vhd" 
comp -include "$dsn\src\TestBench\decoder3to8_TB.vhd" 
asim +access +r TESTBENCH_FOR_decoder3to8 
wave 
wave -noreg en
wave -noreg A
wave -noreg B
wave -noreg C
wave -noreg Y
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\decoder3to8_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_decoder3to8 
