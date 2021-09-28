transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/Behavioural/SequenceGenerator/Flipflops.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/Behavioural/SequenceGenerator/DUT.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/Behavioural/SequenceGenerator/SequenceGeneratorStructural.vhd}

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/Behavioural/SequenceGenerator/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
