transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {timer_controller_tb.vho}

vcom -93 -work work {/home/aditya/Projects/iitb/ee214/vhdl/Behavioural/TimerController/timer_controller_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut_instance=timer_controller_tb_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  timer_controller_tb

add wave *
view structure
view signals
run 80 us
