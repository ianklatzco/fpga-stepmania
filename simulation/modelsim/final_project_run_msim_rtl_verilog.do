transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/audio_codec.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/audio_and_video_config.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/Altera_UP_SYNC_FIFO.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/Altera_UP_Slow_Clock_Generator.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/Altera_UP_I2C_AV_Auto_Initialize.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/Altera_UP_I2C.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/Altera_UP_Clock_Edge.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/Altera_UP_Audio_Out_Serializer.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/Altera_UP_Audio_In_Deserializer.v}
vlog -vlog01compat -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/Altera_UP_Audio_Bit_Counter.v}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/test_memory.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project {C:/Users/ian/Dropbox/Desktop/ece385-final-project/reg_16.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/tristate.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/sram_reading_fsm.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw {C:/Users/ian/Dropbox/Desktop/ece385-final-project/audio/audio-uw/audio_driver.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project {C:/Users/ian/Dropbox/Desktop/ece385-final-project/timer.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga {C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga/arrow.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga {C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga/receptor.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga {C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga/ball.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project {C:/Users/ian/Dropbox/Desktop/ece385-final-project/testbench.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga {C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga/vga_controller.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga {C:/Users/ian/Dropbox/Desktop/ece385-final-project/vga/color_mapper.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project {C:/Users/ian/Dropbox/Desktop/ece385-final-project/hex_driver.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/ps2_kb {C:/Users/ian/Dropbox/Desktop/ece385-final-project/ps2_kb/Dreg.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/ps2_kb {C:/Users/ian/Dropbox/Desktop/ece385-final-project/ps2_kb/11_reg.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project {C:/Users/ian/Dropbox/Desktop/ece385-final-project/toplevel.sv}
vlog -sv -work work +incdir+C:/Users/ian/Dropbox/Desktop/ece385-final-project/ps2_kb {C:/Users/ian/Dropbox/Desktop/ece385-final-project/ps2_kb/keyboard.sv}

