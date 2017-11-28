transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project/vga {C:/Users/klatzco2/ece385-final-project/vga/arrow.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project/vga {C:/Users/klatzco2/ece385-final-project/vga/receptor.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project/vga {C:/Users/klatzco2/ece385-final-project/vga/ball.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project/vga {C:/Users/klatzco2/ece385-final-project/vga/vga_controller.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project/vga {C:/Users/klatzco2/ece385-final-project/vga/color_mapper.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project {C:/Users/klatzco2/ece385-final-project/hex_driver.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project {C:/Users/klatzco2/ece385-final-project/toplevel.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project/ps2_kb {C:/Users/klatzco2/ece385-final-project/ps2_kb/Dreg.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project/ps2_kb {C:/Users/klatzco2/ece385-final-project/ps2_kb/11_reg.sv}
vlog -sv -work work +incdir+C:/Users/klatzco2/ece385-final-project/ps2_kb {C:/Users/klatzco2/ece385-final-project/ps2_kb/keyboard.sv}
vcom -93 -work work {C:/Users/klatzco2/ece385-final-project/ECE385-HelperTools/Audio Helper/audio_interface.vhd}

