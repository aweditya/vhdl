transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/CombinationalCircuits1/3to8Decoder/Gates.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/CombinationalCircuits1/3to8Decoder/DUT.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/CombinationalCircuits1/3to8Decoder/Decoder2to4.vhd}
vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/CombinationalCircuits1/3to8Decoder/Decoder3to8.vhd}

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/CombinationalCircuits1/3to8Decoder/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
