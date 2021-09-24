transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/AdderSubtractor/Gates.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/AdderSubtractor/DUT.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/AdderSubtractor/Testbench.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/AdderSubtractor/Full_Adder.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/AdderSubtractor/Adder_Subtractor.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/AdderSubtractor/Adder_Subtractor_4_Bit.vhd}

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/AdderSubtractor/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
