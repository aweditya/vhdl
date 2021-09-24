transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/Behavioural/4Bit4x1Mux/DUT.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/Behavioural/4Bit4x1Mux/Mux4Bit4x1.vhd}

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/Behavioural/4Bit4x1Mux/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
