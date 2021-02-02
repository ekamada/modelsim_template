vcom -f sim_adder_vhdl.files
vsim adder_tb
view wave
do adder_waves.do
log -r /*
run 250 ns
WaveRestoreZoom {0 ns} {250 ns}
