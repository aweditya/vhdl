-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/24/2021 12:32:47"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	timer_controller IS
    PORT (
	inp_switch : IN std_logic_vector(2 DOWNTO 0);
	reset : IN std_logic;
	clock_50 : IN std_logic;
	clock_1 : IN std_logic;
	out_LED : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END timer_controller;

-- Design Ports Information


ARCHITECTURE structure OF timer_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp_switch : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_1 : std_logic;
SIGNAL ww_out_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_circuit|Add0~140\ : std_logic;
SIGNAL \timer_circuit|Add1~140\ : std_logic;
SIGNAL \timer_circuit|Add2~140\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_1~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \FSM_output[0]~2_combout\ : std_logic;
SIGNAL \present_state~7_combout\ : std_logic;
SIGNAL \FSM_output[0]~0_combout\ : std_logic;
SIGNAL \present_state.timer1~regout\ : std_logic;
SIGNAL \present_state.RST~regout\ : std_logic;
SIGNAL \FSM_output[0]~1_combout\ : std_logic;
SIGNAL \FSM_output[1]~4_combout\ : std_logic;
SIGNAL \present_state~6_combout\ : std_logic;
SIGNAL \present_state.timer2~regout\ : std_logic;
SIGNAL \FSM_output[0]~3_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~142_cout0\ : std_logic;
SIGNAL \timer_circuit|Add0~142COUT1_146\ : std_logic;
SIGNAL \timer_circuit|Add0~135_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~137\ : std_logic;
SIGNAL \timer_circuit|Add0~137COUT1_147\ : std_logic;
SIGNAL \timer_circuit|Add0~130_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~132\ : std_logic;
SIGNAL \timer_circuit|Add0~132COUT1_148\ : std_logic;
SIGNAL \timer_circuit|Add0~125_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~127\ : std_logic;
SIGNAL \timer_circuit|Add0~120_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~122\ : std_logic;
SIGNAL \timer_circuit|Add0~122COUT1_149\ : std_logic;
SIGNAL \timer_circuit|Add0~115_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~117\ : std_logic;
SIGNAL \timer_circuit|Add0~117COUT1_150\ : std_logic;
SIGNAL \timer_circuit|Add0~110_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~112\ : std_logic;
SIGNAL \timer_circuit|Add0~112COUT1_151\ : std_logic;
SIGNAL \timer_circuit|Add0~105_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~107\ : std_logic;
SIGNAL \timer_circuit|Add0~107COUT1_152\ : std_logic;
SIGNAL \timer_circuit|Add0~100_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~102\ : std_logic;
SIGNAL \timer_circuit|Add0~95_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~97\ : std_logic;
SIGNAL \timer_circuit|Add0~97COUT1_153\ : std_logic;
SIGNAL \timer_circuit|Add0~90_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~92\ : std_logic;
SIGNAL \timer_circuit|Add0~92COUT1_154\ : std_logic;
SIGNAL \timer_circuit|Add0~85_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~87\ : std_logic;
SIGNAL \timer_circuit|Add0~87COUT1_155\ : std_logic;
SIGNAL \timer_circuit|Add0~80_combout\ : std_logic;
SIGNAL \timer_circuit|Equal0~5\ : std_logic;
SIGNAL \timer_circuit|Equal0~6\ : std_logic;
SIGNAL \timer_circuit|Equal0~7\ : std_logic;
SIGNAL \timer_circuit|Equal0~8_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~82\ : std_logic;
SIGNAL \timer_circuit|Add0~82COUT1_156\ : std_logic;
SIGNAL \timer_circuit|Add0~75_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~77\ : std_logic;
SIGNAL \timer_circuit|Add0~70_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~72\ : std_logic;
SIGNAL \timer_circuit|Add0~72COUT1_157\ : std_logic;
SIGNAL \timer_circuit|Add0~65_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~67\ : std_logic;
SIGNAL \timer_circuit|Add0~67COUT1_158\ : std_logic;
SIGNAL \timer_circuit|Add0~60_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~62\ : std_logic;
SIGNAL \timer_circuit|Add0~62COUT1_159\ : std_logic;
SIGNAL \timer_circuit|Add0~55_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~57\ : std_logic;
SIGNAL \timer_circuit|Add0~57COUT1_160\ : std_logic;
SIGNAL \timer_circuit|Add0~45_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~47\ : std_logic;
SIGNAL \timer_circuit|Add0~50_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~52\ : std_logic;
SIGNAL \timer_circuit|Add0~52COUT1_161\ : std_logic;
SIGNAL \timer_circuit|Add0~40_combout\ : std_logic;
SIGNAL \timer_circuit|Equal0~2\ : std_logic;
SIGNAL \timer_circuit|Equal0~3\ : std_logic;
SIGNAL \timer_circuit|Add0~42\ : std_logic;
SIGNAL \timer_circuit|Add0~42COUT1_162\ : std_logic;
SIGNAL \timer_circuit|Add0~35_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~37\ : std_logic;
SIGNAL \timer_circuit|Add0~37COUT1_163\ : std_logic;
SIGNAL \timer_circuit|Add0~30_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~32\ : std_logic;
SIGNAL \timer_circuit|Add0~32COUT1_164\ : std_logic;
SIGNAL \timer_circuit|Add0~25_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~27\ : std_logic;
SIGNAL \timer_circuit|Add0~20_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~22\ : std_logic;
SIGNAL \timer_circuit|Add0~22COUT1_165\ : std_logic;
SIGNAL \timer_circuit|Add0~15_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~17\ : std_logic;
SIGNAL \timer_circuit|Add0~17COUT1_166\ : std_logic;
SIGNAL \timer_circuit|Add0~0_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~2\ : std_logic;
SIGNAL \timer_circuit|Add0~2COUT1_167\ : std_logic;
SIGNAL \timer_circuit|Add0~10_combout\ : std_logic;
SIGNAL \timer_circuit|Add0~12\ : std_logic;
SIGNAL \timer_circuit|Add0~12COUT1_168\ : std_logic;
SIGNAL \timer_circuit|Add0~5_combout\ : std_logic;
SIGNAL \timer_circuit|Equal0~0\ : std_logic;
SIGNAL \timer_circuit|Equal0~1\ : std_logic;
SIGNAL \timer_circuit|Equal0~4_combout\ : std_logic;
SIGNAL \timer_circuit|Mux3~0_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~142_cout0\ : std_logic;
SIGNAL \timer_circuit|Add1~142COUT1_146\ : std_logic;
SIGNAL \timer_circuit|Add1~135_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~137\ : std_logic;
SIGNAL \timer_circuit|Add1~137COUT1_147\ : std_logic;
SIGNAL \timer_circuit|Add1~130_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~132\ : std_logic;
SIGNAL \timer_circuit|Add1~132COUT1_148\ : std_logic;
SIGNAL \timer_circuit|Add1~125_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~127\ : std_logic;
SIGNAL \timer_circuit|Add1~120_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~122\ : std_logic;
SIGNAL \timer_circuit|Add1~122COUT1_149\ : std_logic;
SIGNAL \timer_circuit|Add1~115_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~117\ : std_logic;
SIGNAL \timer_circuit|Add1~117COUT1_150\ : std_logic;
SIGNAL \timer_circuit|Add1~110_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~112\ : std_logic;
SIGNAL \timer_circuit|Add1~112COUT1_151\ : std_logic;
SIGNAL \timer_circuit|Add1~105_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~107\ : std_logic;
SIGNAL \timer_circuit|Add1~107COUT1_152\ : std_logic;
SIGNAL \timer_circuit|Add1~100_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~102\ : std_logic;
SIGNAL \timer_circuit|Add1~80_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~82\ : std_logic;
SIGNAL \timer_circuit|Add1~82COUT1_153\ : std_logic;
SIGNAL \timer_circuit|Add1~95_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~97\ : std_logic;
SIGNAL \timer_circuit|Add1~97COUT1_154\ : std_logic;
SIGNAL \timer_circuit|Add1~90_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~92\ : std_logic;
SIGNAL \timer_circuit|Add1~92COUT1_155\ : std_logic;
SIGNAL \timer_circuit|Add1~85_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~87\ : std_logic;
SIGNAL \timer_circuit|Add1~87COUT1_156\ : std_logic;
SIGNAL \timer_circuit|Add1~75_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~77\ : std_logic;
SIGNAL \timer_circuit|Add1~70_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~72\ : std_logic;
SIGNAL \timer_circuit|Add1~72COUT1_157\ : std_logic;
SIGNAL \timer_circuit|Add1~65_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~67\ : std_logic;
SIGNAL \timer_circuit|Add1~67COUT1_158\ : std_logic;
SIGNAL \timer_circuit|Add1~60_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~62\ : std_logic;
SIGNAL \timer_circuit|Add1~62COUT1_159\ : std_logic;
SIGNAL \timer_circuit|Add1~45_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~47\ : std_logic;
SIGNAL \timer_circuit|Add1~47COUT1_160\ : std_logic;
SIGNAL \timer_circuit|Add1~55_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~57\ : std_logic;
SIGNAL \timer_circuit|Add1~40_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~42\ : std_logic;
SIGNAL \timer_circuit|Add1~42COUT1_161\ : std_logic;
SIGNAL \timer_circuit|Add1~50_combout\ : std_logic;
SIGNAL \timer_circuit|Equal1~2\ : std_logic;
SIGNAL \timer_circuit|Equal1~3\ : std_logic;
SIGNAL \timer_circuit|Add1~52\ : std_logic;
SIGNAL \timer_circuit|Add1~52COUT1_162\ : std_logic;
SIGNAL \timer_circuit|Add1~35_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~37\ : std_logic;
SIGNAL \timer_circuit|Add1~37COUT1_163\ : std_logic;
SIGNAL \timer_circuit|Add1~30_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~32\ : std_logic;
SIGNAL \timer_circuit|Add1~32COUT1_164\ : std_logic;
SIGNAL \timer_circuit|Add1~25_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~27\ : std_logic;
SIGNAL \timer_circuit|Add1~20_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~22\ : std_logic;
SIGNAL \timer_circuit|Add1~22COUT1_165\ : std_logic;
SIGNAL \timer_circuit|Add1~5_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~7\ : std_logic;
SIGNAL \timer_circuit|Add1~7COUT1_166\ : std_logic;
SIGNAL \timer_circuit|Add1~15_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~17\ : std_logic;
SIGNAL \timer_circuit|Add1~17COUT1_167\ : std_logic;
SIGNAL \timer_circuit|Add1~2\ : std_logic;
SIGNAL \timer_circuit|Add1~2COUT1_168\ : std_logic;
SIGNAL \timer_circuit|Add1~10_combout\ : std_logic;
SIGNAL \timer_circuit|Add1~0_combout\ : std_logic;
SIGNAL \timer_circuit|Equal1~0\ : std_logic;
SIGNAL \timer_circuit|Equal1~1\ : std_logic;
SIGNAL \timer_circuit|Equal1~4_combout\ : std_logic;
SIGNAL \timer_circuit|Equal1~5\ : std_logic;
SIGNAL \timer_circuit|Equal1~7\ : std_logic;
SIGNAL \timer_circuit|Equal1~6\ : std_logic;
SIGNAL \timer_circuit|Equal1~8_combout\ : std_logic;
SIGNAL \timer_circuit|Mux2~0_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~142_cout0\ : std_logic;
SIGNAL \timer_circuit|Add2~142COUT1_146\ : std_logic;
SIGNAL \timer_circuit|Add2~135_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~137\ : std_logic;
SIGNAL \timer_circuit|Add2~137COUT1_147\ : std_logic;
SIGNAL \timer_circuit|Add2~130_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~132\ : std_logic;
SIGNAL \timer_circuit|Add2~132COUT1_148\ : std_logic;
SIGNAL \timer_circuit|Add2~125_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~127\ : std_logic;
SIGNAL \timer_circuit|Add2~120_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~122\ : std_logic;
SIGNAL \timer_circuit|Add2~122COUT1_149\ : std_logic;
SIGNAL \timer_circuit|Add2~115_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~117\ : std_logic;
SIGNAL \timer_circuit|Add2~117COUT1_150\ : std_logic;
SIGNAL \timer_circuit|Add2~110_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~112\ : std_logic;
SIGNAL \timer_circuit|Add2~112COUT1_151\ : std_logic;
SIGNAL \timer_circuit|Add2~105_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~107\ : std_logic;
SIGNAL \timer_circuit|Add2~107COUT1_152\ : std_logic;
SIGNAL \timer_circuit|Add2~100_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~102\ : std_logic;
SIGNAL \timer_circuit|Add2~80_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~82\ : std_logic;
SIGNAL \timer_circuit|Add2~82COUT1_153\ : std_logic;
SIGNAL \timer_circuit|Add2~95_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~97\ : std_logic;
SIGNAL \timer_circuit|Add2~97COUT1_154\ : std_logic;
SIGNAL \timer_circuit|Add2~90_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~92\ : std_logic;
SIGNAL \timer_circuit|Add2~92COUT1_155\ : std_logic;
SIGNAL \timer_circuit|Add2~85_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~87\ : std_logic;
SIGNAL \timer_circuit|Add2~87COUT1_156\ : std_logic;
SIGNAL \timer_circuit|Add2~70_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~72\ : std_logic;
SIGNAL \timer_circuit|Add2~75_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~77\ : std_logic;
SIGNAL \timer_circuit|Add2~77COUT1_157\ : std_logic;
SIGNAL \timer_circuit|Add2~65_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~67\ : std_logic;
SIGNAL \timer_circuit|Add2~67COUT1_158\ : std_logic;
SIGNAL \timer_circuit|Add2~60_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~62\ : std_logic;
SIGNAL \timer_circuit|Add2~62COUT1_159\ : std_logic;
SIGNAL \timer_circuit|Add2~55_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~57\ : std_logic;
SIGNAL \timer_circuit|Add2~57COUT1_160\ : std_logic;
SIGNAL \timer_circuit|Add2~50_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~52\ : std_logic;
SIGNAL \timer_circuit|Add2~45_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~47\ : std_logic;
SIGNAL \timer_circuit|Add2~47COUT1_161\ : std_logic;
SIGNAL \timer_circuit|Add2~40_combout\ : std_logic;
SIGNAL \timer_circuit|Equal2~2\ : std_logic;
SIGNAL \timer_circuit|Add2~42\ : std_logic;
SIGNAL \timer_circuit|Add2~42COUT1_162\ : std_logic;
SIGNAL \timer_circuit|Add2~35_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~37\ : std_logic;
SIGNAL \timer_circuit|Add2~37COUT1_163\ : std_logic;
SIGNAL \timer_circuit|Add2~30_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~32\ : std_logic;
SIGNAL \timer_circuit|Add2~32COUT1_164\ : std_logic;
SIGNAL \timer_circuit|Add2~25_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~27\ : std_logic;
SIGNAL \timer_circuit|Add2~20_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~22\ : std_logic;
SIGNAL \timer_circuit|Add2~22COUT1_165\ : std_logic;
SIGNAL \timer_circuit|Add2~15_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~17\ : std_logic;
SIGNAL \timer_circuit|Add2~17COUT1_166\ : std_logic;
SIGNAL \timer_circuit|Add2~10_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~12\ : std_logic;
SIGNAL \timer_circuit|Add2~12COUT1_167\ : std_logic;
SIGNAL \timer_circuit|Add2~5_combout\ : std_logic;
SIGNAL \timer_circuit|Add2~7\ : std_logic;
SIGNAL \timer_circuit|Add2~7COUT1_168\ : std_logic;
SIGNAL \timer_circuit|Add2~0_combout\ : std_logic;
SIGNAL \timer_circuit|Equal2~0\ : std_logic;
SIGNAL \timer_circuit|Equal2~1\ : std_logic;
SIGNAL \timer_circuit|Equal2~3\ : std_logic;
SIGNAL \timer_circuit|Equal2~4_combout\ : std_logic;
SIGNAL \timer_circuit|Equal2~5\ : std_logic;
SIGNAL \timer_circuit|Equal2~6\ : std_logic;
SIGNAL \timer_circuit|Equal2~7\ : std_logic;
SIGNAL \timer_circuit|Equal2~8_combout\ : std_logic;
SIGNAL \timer_circuit|Mux1~0_combout\ : std_logic;
SIGNAL \timer_circuit|timer3\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \timer_circuit|LED\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inp_switch~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \timer_circuit|timer1\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \timer_circuit|timer2\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

ww_inp_switch <= inp_switch;
ww_reset <= reset;
ww_clock_50 <= clock_50;
ww_clock_1 <= clock_1;
out_LED <= ww_out_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_1,
	combout => \clock_1~combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(0),
	combout => \inp_switch~combout\(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(2),
	combout => \inp_switch~combout\(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(1),
	combout => \inp_switch~combout\(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X7_Y7_N3
\FSM_output[0]~2\ : maxv_lcell
-- Equation(s):
-- \FSM_output[0]~2_combout\ = (!\reset~combout\ & ((\inp_switch~combout\(0) & (!\inp_switch~combout\(2) & !\inp_switch~combout\(1))) # (!\inp_switch~combout\(0) & (\inp_switch~combout\(2) $ (\inp_switch~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0016",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(2),
	datac => \inp_switch~combout\(1),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_output[0]~2_combout\);

-- Location: LC_X7_Y7_N4
\present_state~7\ : maxv_lcell
-- Equation(s):
-- \present_state~7_combout\ = (((!\inp_switch~combout\(1) & !\inp_switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inp_switch~combout\(1),
	datad => \inp_switch~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \present_state~7_combout\);

-- Location: LC_X7_Y7_N1
\FSM_output[0]~0\ : maxv_lcell
-- Equation(s):
-- \FSM_output[0]~0_combout\ = (\inp_switch~combout\(0) & ((\inp_switch~combout\(2)) # ((\inp_switch~combout\(1))))) # (!\inp_switch~combout\(0) & (\inp_switch~combout\(2) $ ((!\inp_switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e9e9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(2),
	datac => \inp_switch~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_output[0]~0_combout\);

-- Location: LC_X7_Y7_N6
\present_state.timer1\ : maxv_lcell
-- Equation(s):
-- \present_state.timer1~regout\ = DFFEAS((!\reset~combout\ & ((\FSM_output[0]~0_combout\ & ((\present_state.timer1~regout\))) # (!\FSM_output[0]~0_combout\ & (\present_state~7_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \FSM_output[0]~0_combout\,
	datab => \present_state~7_combout\,
	datac => \present_state.timer1~regout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.timer1~regout\);

-- Location: LC_X7_Y7_N9
\present_state.RST\ : maxv_lcell
-- Equation(s):
-- \present_state.RST~regout\ = DFFEAS(((!\reset~combout\ & ((\present_state.RST~regout\) # (!\FSM_output[0]~0_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \present_state.RST~regout\,
	datac => \FSM_output[0]~0_combout\,
	datad => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.RST~regout\);

-- Location: LC_X7_Y7_N2
\FSM_output[0]~1\ : maxv_lcell
-- Equation(s):
-- \FSM_output[0]~1_combout\ = ((!\reset~combout\ & (\FSM_output[0]~0_combout\ & \present_state.RST~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \FSM_output[0]~0_combout\,
	datad => \present_state.RST~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_output[0]~1_combout\);

-- Location: LC_X7_Y7_N5
\FSM_output[1]~4\ : maxv_lcell
-- Equation(s):
-- \FSM_output[1]~4_combout\ = (\FSM_output[0]~2_combout\ & (((!\present_state.timer1~regout\ & \FSM_output[0]~1_combout\)) # (!\present_state~7_combout\))) # (!\FSM_output[0]~2_combout\ & (((!\present_state.timer1~regout\ & \FSM_output[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_output[0]~2_combout\,
	datab => \present_state~7_combout\,
	datac => \present_state.timer1~regout\,
	datad => \FSM_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_output[1]~4_combout\);

-- Location: LC_X7_Y7_N8
\present_state~6\ : maxv_lcell
-- Equation(s):
-- \present_state~6_combout\ = (((\inp_switch~combout\(1) & !\inp_switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inp_switch~combout\(1),
	datad => \inp_switch~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \present_state~6_combout\);

-- Location: LC_X7_Y7_N0
\present_state.timer2\ : maxv_lcell
-- Equation(s):
-- \present_state.timer2~regout\ = DFFEAS((!\reset~combout\ & ((\FSM_output[0]~0_combout\ & ((\present_state.timer2~regout\))) # (!\FSM_output[0]~0_combout\ & (\present_state~6_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \present_state~6_combout\,
	datab => \present_state.timer2~regout\,
	datac => \reset~combout\,
	datad => \FSM_output[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.timer2~regout\);

-- Location: LC_X7_Y7_N7
\FSM_output[0]~3\ : maxv_lcell
-- Equation(s):
-- \FSM_output[0]~3_combout\ = (\present_state~6_combout\ & (!\present_state.timer2~regout\ & ((\FSM_output[0]~1_combout\)))) # (!\present_state~6_combout\ & ((\FSM_output[0]~2_combout\) # ((!\present_state.timer2~regout\ & \FSM_output[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \present_state~6_combout\,
	datab => \present_state.timer2~regout\,
	datac => \FSM_output[0]~2_combout\,
	datad => \FSM_output[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_output[0]~3_combout\);

-- Location: LC_X10_Y8_N0
\timer_circuit|timer1[0]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(0) = DFFEAS((\timer_circuit|timer1\(0) $ ((\timer_circuit|Mux3~0_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \timer_circuit|timer1\(0),
	datac => \timer_circuit|Mux3~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(0));

-- Location: LC_X10_Y8_N1
\timer_circuit|Add0~142\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~142_cout0\ = CARRY(((!\timer_circuit|timer1\(0))))
-- \timer_circuit|Add0~142COUT1_146\ = CARRY(((!\timer_circuit|timer1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~140\,
	cout0 => \timer_circuit|Add0~142_cout0\,
	cout1 => \timer_circuit|Add0~142COUT1_146\);

-- Location: LC_X10_Y8_N2
\timer_circuit|Add0~135\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~135_combout\ = \timer_circuit|timer1\(1) $ ((((\timer_circuit|Add0~142_cout0\))))
-- \timer_circuit|Add0~137\ = CARRY(((!\timer_circuit|Add0~142_cout0\)) # (!\timer_circuit|timer1\(1)))
-- \timer_circuit|Add0~137COUT1_147\ = CARRY(((!\timer_circuit|Add0~142COUT1_146\)) # (!\timer_circuit|timer1\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(1),
	cin0 => \timer_circuit|Add0~142_cout0\,
	cin1 => \timer_circuit|Add0~142COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~135_combout\,
	cout0 => \timer_circuit|Add0~137\,
	cout1 => \timer_circuit|Add0~137COUT1_147\);

-- Location: LC_X9_Y8_N5
\timer_circuit|timer1[1]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(1) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~135_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(1));

-- Location: LC_X10_Y8_N3
\timer_circuit|Add0~130\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~130_combout\ = (\timer_circuit|timer1\(2) $ ((!\timer_circuit|Add0~137\)))
-- \timer_circuit|Add0~132\ = CARRY(((\timer_circuit|timer1\(2) & !\timer_circuit|Add0~137\)))
-- \timer_circuit|Add0~132COUT1_148\ = CARRY(((\timer_circuit|timer1\(2) & !\timer_circuit|Add0~137COUT1_147\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(2),
	cin0 => \timer_circuit|Add0~137\,
	cin1 => \timer_circuit|Add0~137COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~130_combout\,
	cout0 => \timer_circuit|Add0~132\,
	cout1 => \timer_circuit|Add0~132COUT1_148\);

-- Location: LC_X9_Y8_N7
\timer_circuit|timer1[2]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(2) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~130_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(2));

-- Location: LC_X10_Y8_N4
\timer_circuit|Add0~125\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~125_combout\ = \timer_circuit|timer1\(3) $ ((((\timer_circuit|Add0~132\))))
-- \timer_circuit|Add0~127\ = CARRY(((!\timer_circuit|Add0~132COUT1_148\)) # (!\timer_circuit|timer1\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(3),
	cin0 => \timer_circuit|Add0~132\,
	cin1 => \timer_circuit|Add0~132COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~125_combout\,
	cout => \timer_circuit|Add0~127\);

-- Location: LC_X9_Y8_N9
\timer_circuit|timer1[3]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(3) = DFFEAS((((\timer_circuit|Add0~125_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add0~125_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(3));

-- Location: LC_X10_Y8_N5
\timer_circuit|Add0~120\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~120_combout\ = \timer_circuit|timer1\(4) $ ((((!\timer_circuit|Add0~127\))))
-- \timer_circuit|Add0~122\ = CARRY((\timer_circuit|timer1\(4) & ((!\timer_circuit|Add0~127\))))
-- \timer_circuit|Add0~122COUT1_149\ = CARRY((\timer_circuit|timer1\(4) & ((!\timer_circuit|Add0~127\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(4),
	cin => \timer_circuit|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~120_combout\,
	cout0 => \timer_circuit|Add0~122\,
	cout1 => \timer_circuit|Add0~122COUT1_149\);

-- Location: LC_X9_Y8_N1
\timer_circuit|timer1[4]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~7\ = (!\timer_circuit|timer1\(1) & (!\timer_circuit|timer1\(2) & (!B1_timer1[4] & !\timer_circuit|timer1\(3))))
-- \timer_circuit|timer1\(4) = DFFEAS(\timer_circuit|Equal0~7\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer1\(1),
	datab => \timer_circuit|timer1\(2),
	datac => \timer_circuit|Add0~120_combout\,
	datad => \timer_circuit|timer1\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~7\,
	regout => \timer_circuit|timer1\(4));

-- Location: LC_X10_Y8_N6
\timer_circuit|Add0~115\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~115_combout\ = (\timer_circuit|timer1\(5) $ (((!\timer_circuit|Add0~127\ & \timer_circuit|Add0~122\) # (\timer_circuit|Add0~127\ & \timer_circuit|Add0~122COUT1_149\))))
-- \timer_circuit|Add0~117\ = CARRY(((!\timer_circuit|Add0~122\) # (!\timer_circuit|timer1\(5))))
-- \timer_circuit|Add0~117COUT1_150\ = CARRY(((!\timer_circuit|Add0~122COUT1_149\) # (!\timer_circuit|timer1\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(5),
	cin => \timer_circuit|Add0~127\,
	cin0 => \timer_circuit|Add0~122\,
	cin1 => \timer_circuit|Add0~122COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~115_combout\,
	cout0 => \timer_circuit|Add0~117\,
	cout1 => \timer_circuit|Add0~117COUT1_150\);

-- Location: LC_X9_Y8_N6
\timer_circuit|timer1[5]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(5) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~115_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(5));

-- Location: LC_X10_Y8_N7
\timer_circuit|Add0~110\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~110_combout\ = (\timer_circuit|timer1\(6) $ ((!(!\timer_circuit|Add0~127\ & \timer_circuit|Add0~117\) # (\timer_circuit|Add0~127\ & \timer_circuit|Add0~117COUT1_150\))))
-- \timer_circuit|Add0~112\ = CARRY(((\timer_circuit|timer1\(6) & !\timer_circuit|Add0~117\)))
-- \timer_circuit|Add0~112COUT1_151\ = CARRY(((\timer_circuit|timer1\(6) & !\timer_circuit|Add0~117COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(6),
	cin => \timer_circuit|Add0~127\,
	cin0 => \timer_circuit|Add0~117\,
	cin1 => \timer_circuit|Add0~117COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~110_combout\,
	cout0 => \timer_circuit|Add0~112\,
	cout1 => \timer_circuit|Add0~112COUT1_151\);

-- Location: LC_X9_Y8_N2
\timer_circuit|timer1[6]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(6) = DFFEAS((((\timer_circuit|Add0~110_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add0~110_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(6));

-- Location: LC_X10_Y8_N8
\timer_circuit|Add0~105\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~105_combout\ = (\timer_circuit|timer1\(7) $ (((!\timer_circuit|Add0~127\ & \timer_circuit|Add0~112\) # (\timer_circuit|Add0~127\ & \timer_circuit|Add0~112COUT1_151\))))
-- \timer_circuit|Add0~107\ = CARRY(((!\timer_circuit|Add0~112\) # (!\timer_circuit|timer1\(7))))
-- \timer_circuit|Add0~107COUT1_152\ = CARRY(((!\timer_circuit|Add0~112COUT1_151\) # (!\timer_circuit|timer1\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(7),
	cin => \timer_circuit|Add0~127\,
	cin0 => \timer_circuit|Add0~112\,
	cin1 => \timer_circuit|Add0~112COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~105_combout\,
	cout0 => \timer_circuit|Add0~107\,
	cout1 => \timer_circuit|Add0~107COUT1_152\);

-- Location: LC_X9_Y8_N3
\timer_circuit|timer1[7]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(7) = DFFEAS((((\timer_circuit|Add0~105_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add0~105_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(7));

-- Location: LC_X10_Y8_N9
\timer_circuit|Add0~100\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~100_combout\ = \timer_circuit|timer1\(8) $ ((((!(!\timer_circuit|Add0~127\ & \timer_circuit|Add0~107\) # (\timer_circuit|Add0~127\ & \timer_circuit|Add0~107COUT1_152\)))))
-- \timer_circuit|Add0~102\ = CARRY((\timer_circuit|timer1\(8) & ((!\timer_circuit|Add0~107COUT1_152\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(8),
	cin => \timer_circuit|Add0~127\,
	cin0 => \timer_circuit|Add0~107\,
	cin1 => \timer_circuit|Add0~107COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~100_combout\,
	cout => \timer_circuit|Add0~102\);

-- Location: LC_X9_Y8_N0
\timer_circuit|timer1[8]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~6\ = (!\timer_circuit|timer1\(5) & (!\timer_circuit|timer1\(6) & (B1_timer1[8] & !\timer_circuit|timer1\(7))))
-- \timer_circuit|timer1\(8) = DFFEAS(\timer_circuit|Equal0~6\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer1\(5),
	datab => \timer_circuit|timer1\(6),
	datac => \timer_circuit|Add0~100_combout\,
	datad => \timer_circuit|timer1\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~6\,
	regout => \timer_circuit|timer1\(8));

-- Location: LC_X11_Y8_N0
\timer_circuit|Add0~95\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~95_combout\ = (\timer_circuit|timer1\(9) $ ((\timer_circuit|Add0~102\)))
-- \timer_circuit|Add0~97\ = CARRY(((!\timer_circuit|Add0~102\) # (!\timer_circuit|timer1\(9))))
-- \timer_circuit|Add0~97COUT1_153\ = CARRY(((!\timer_circuit|Add0~102\) # (!\timer_circuit|timer1\(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(9),
	cin => \timer_circuit|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~95_combout\,
	cout0 => \timer_circuit|Add0~97\,
	cout1 => \timer_circuit|Add0~97COUT1_153\);

-- Location: LC_X9_Y8_N4
\timer_circuit|timer1[9]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(9) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~95_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(9));

-- Location: LC_X11_Y8_N1
\timer_circuit|Add0~90\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~90_combout\ = (\timer_circuit|timer1\(10) $ ((!(!\timer_circuit|Add0~102\ & \timer_circuit|Add0~97\) # (\timer_circuit|Add0~102\ & \timer_circuit|Add0~97COUT1_153\))))
-- \timer_circuit|Add0~92\ = CARRY(((\timer_circuit|timer1\(10) & !\timer_circuit|Add0~97\)))
-- \timer_circuit|Add0~92COUT1_154\ = CARRY(((\timer_circuit|timer1\(10) & !\timer_circuit|Add0~97COUT1_153\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(10),
	cin => \timer_circuit|Add0~102\,
	cin0 => \timer_circuit|Add0~97\,
	cin1 => \timer_circuit|Add0~97COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~90_combout\,
	cout0 => \timer_circuit|Add0~92\,
	cout1 => \timer_circuit|Add0~92COUT1_154\);

-- Location: LC_X8_Y8_N9
\timer_circuit|timer1[10]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(10) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~90_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(10));

-- Location: LC_X11_Y8_N2
\timer_circuit|Add0~85\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~85_combout\ = (\timer_circuit|timer1\(11) $ (((!\timer_circuit|Add0~102\ & \timer_circuit|Add0~92\) # (\timer_circuit|Add0~102\ & \timer_circuit|Add0~92COUT1_154\))))
-- \timer_circuit|Add0~87\ = CARRY(((!\timer_circuit|Add0~92\) # (!\timer_circuit|timer1\(11))))
-- \timer_circuit|Add0~87COUT1_155\ = CARRY(((!\timer_circuit|Add0~92COUT1_154\) # (!\timer_circuit|timer1\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(11),
	cin => \timer_circuit|Add0~102\,
	cin0 => \timer_circuit|Add0~92\,
	cin1 => \timer_circuit|Add0~92COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~85_combout\,
	cout0 => \timer_circuit|Add0~87\,
	cout1 => \timer_circuit|Add0~87COUT1_155\);

-- Location: LC_X8_Y8_N3
\timer_circuit|timer1[11]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(11) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~85_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(11));

-- Location: LC_X8_Y8_N2
\timer_circuit|timer1[12]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~5\ = (!\timer_circuit|timer1\(11) & (!\timer_circuit|timer1\(10) & (!B1_timer1[12] & !\timer_circuit|timer1\(9))))
-- \timer_circuit|timer1\(12) = DFFEAS(\timer_circuit|Equal0~5\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer1\(11),
	datab => \timer_circuit|timer1\(10),
	datac => \timer_circuit|Add0~80_combout\,
	datad => \timer_circuit|timer1\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~5\,
	regout => \timer_circuit|timer1\(12));

-- Location: LC_X11_Y8_N3
\timer_circuit|Add0~80\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~80_combout\ = \timer_circuit|timer1\(12) $ ((((!(!\timer_circuit|Add0~102\ & \timer_circuit|Add0~87\) # (\timer_circuit|Add0~102\ & \timer_circuit|Add0~87COUT1_155\)))))
-- \timer_circuit|Add0~82\ = CARRY((\timer_circuit|timer1\(12) & ((!\timer_circuit|Add0~87\))))
-- \timer_circuit|Add0~82COUT1_156\ = CARRY((\timer_circuit|timer1\(12) & ((!\timer_circuit|Add0~87COUT1_155\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(12),
	cin => \timer_circuit|Add0~102\,
	cin0 => \timer_circuit|Add0~87\,
	cin1 => \timer_circuit|Add0~87COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~80_combout\,
	cout0 => \timer_circuit|Add0~82\,
	cout1 => \timer_circuit|Add0~82COUT1_156\);

-- Location: LC_X8_Y8_N5
\timer_circuit|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~8_combout\ = (\timer_circuit|timer1\(0) & (\timer_circuit|Equal0~5\ & (\timer_circuit|Equal0~6\ & \timer_circuit|Equal0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(0),
	datab => \timer_circuit|Equal0~5\,
	datac => \timer_circuit|Equal0~6\,
	datad => \timer_circuit|Equal0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~8_combout\);

-- Location: LC_X11_Y8_N4
\timer_circuit|Add0~75\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~75_combout\ = (\timer_circuit|timer1\(13) $ (((!\timer_circuit|Add0~102\ & \timer_circuit|Add0~82\) # (\timer_circuit|Add0~102\ & \timer_circuit|Add0~82COUT1_156\))))
-- \timer_circuit|Add0~77\ = CARRY(((!\timer_circuit|Add0~82COUT1_156\) # (!\timer_circuit|timer1\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(13),
	cin => \timer_circuit|Add0~102\,
	cin0 => \timer_circuit|Add0~82\,
	cin1 => \timer_circuit|Add0~82COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~75_combout\,
	cout => \timer_circuit|Add0~77\);

-- Location: LC_X7_Y8_N3
\timer_circuit|timer1[13]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(13) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~75_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(13));

-- Location: LC_X11_Y8_N5
\timer_circuit|Add0~70\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~70_combout\ = (\timer_circuit|timer1\(14) $ ((!\timer_circuit|Add0~77\)))
-- \timer_circuit|Add0~72\ = CARRY(((\timer_circuit|timer1\(14) & !\timer_circuit|Add0~77\)))
-- \timer_circuit|Add0~72COUT1_157\ = CARRY(((\timer_circuit|timer1\(14) & !\timer_circuit|Add0~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(14),
	cin => \timer_circuit|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~70_combout\,
	cout0 => \timer_circuit|Add0~72\,
	cout1 => \timer_circuit|Add0~72COUT1_157\);

-- Location: LC_X7_Y8_N8
\timer_circuit|timer1[14]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(14) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~70_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(14));

-- Location: LC_X11_Y8_N6
\timer_circuit|Add0~65\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~65_combout\ = (\timer_circuit|timer1\(15) $ (((!\timer_circuit|Add0~77\ & \timer_circuit|Add0~72\) # (\timer_circuit|Add0~77\ & \timer_circuit|Add0~72COUT1_157\))))
-- \timer_circuit|Add0~67\ = CARRY(((!\timer_circuit|Add0~72\) # (!\timer_circuit|timer1\(15))))
-- \timer_circuit|Add0~67COUT1_158\ = CARRY(((!\timer_circuit|Add0~72COUT1_157\) # (!\timer_circuit|timer1\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(15),
	cin => \timer_circuit|Add0~77\,
	cin0 => \timer_circuit|Add0~72\,
	cin1 => \timer_circuit|Add0~72COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~65_combout\,
	cout0 => \timer_circuit|Add0~67\,
	cout1 => \timer_circuit|Add0~67COUT1_158\);

-- Location: LC_X6_Y8_N3
\timer_circuit|timer1[15]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(15) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~65_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(15));

-- Location: LC_X11_Y8_N7
\timer_circuit|Add0~60\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~60_combout\ = (\timer_circuit|timer1\(16) $ ((!(!\timer_circuit|Add0~77\ & \timer_circuit|Add0~67\) # (\timer_circuit|Add0~77\ & \timer_circuit|Add0~67COUT1_158\))))
-- \timer_circuit|Add0~62\ = CARRY(((\timer_circuit|timer1\(16) & !\timer_circuit|Add0~67\)))
-- \timer_circuit|Add0~62COUT1_159\ = CARRY(((\timer_circuit|timer1\(16) & !\timer_circuit|Add0~67COUT1_158\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(16),
	cin => \timer_circuit|Add0~77\,
	cin0 => \timer_circuit|Add0~67\,
	cin1 => \timer_circuit|Add0~67COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~60_combout\,
	cout0 => \timer_circuit|Add0~62\,
	cout1 => \timer_circuit|Add0~62COUT1_159\);

-- Location: LC_X7_Y8_N6
\timer_circuit|timer1[16]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~3\ = (\timer_circuit|timer1\(13) & (\timer_circuit|timer1\(15) & (B1_timer1[16] & \timer_circuit|timer1\(14))))
-- \timer_circuit|timer1\(16) = DFFEAS(\timer_circuit|Equal0~3\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer1\(13),
	datab => \timer_circuit|timer1\(15),
	datac => \timer_circuit|Add0~60_combout\,
	datad => \timer_circuit|timer1\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~3\,
	regout => \timer_circuit|timer1\(16));

-- Location: LC_X11_Y8_N8
\timer_circuit|Add0~55\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~55_combout\ = \timer_circuit|timer1\(17) $ (((((!\timer_circuit|Add0~77\ & \timer_circuit|Add0~62\) # (\timer_circuit|Add0~77\ & \timer_circuit|Add0~62COUT1_159\)))))
-- \timer_circuit|Add0~57\ = CARRY(((!\timer_circuit|Add0~62\)) # (!\timer_circuit|timer1\(17)))
-- \timer_circuit|Add0~57COUT1_160\ = CARRY(((!\timer_circuit|Add0~62COUT1_159\)) # (!\timer_circuit|timer1\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(17),
	cin => \timer_circuit|Add0~77\,
	cin0 => \timer_circuit|Add0~62\,
	cin1 => \timer_circuit|Add0~62COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~55_combout\,
	cout0 => \timer_circuit|Add0~57\,
	cout1 => \timer_circuit|Add0~57COUT1_160\);

-- Location: LC_X7_Y8_N0
\timer_circuit|timer1[17]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(17) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~55_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(17));

-- Location: LC_X11_Y8_N9
\timer_circuit|Add0~45\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~45_combout\ = \timer_circuit|timer1\(18) $ ((((!(!\timer_circuit|Add0~77\ & \timer_circuit|Add0~57\) # (\timer_circuit|Add0~77\ & \timer_circuit|Add0~57COUT1_160\)))))
-- \timer_circuit|Add0~47\ = CARRY((\timer_circuit|timer1\(18) & ((!\timer_circuit|Add0~57COUT1_160\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(18),
	cin => \timer_circuit|Add0~77\,
	cin0 => \timer_circuit|Add0~57\,
	cin1 => \timer_circuit|Add0~57COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~45_combout\,
	cout => \timer_circuit|Add0~47\);

-- Location: LC_X6_Y8_N0
\timer_circuit|timer1[18]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(18) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~45_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(18));

-- Location: LC_X12_Y8_N0
\timer_circuit|Add0~50\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~50_combout\ = (\timer_circuit|timer1\(19) $ ((\timer_circuit|Add0~47\)))
-- \timer_circuit|Add0~52\ = CARRY(((!\timer_circuit|Add0~47\) # (!\timer_circuit|timer1\(19))))
-- \timer_circuit|Add0~52COUT1_161\ = CARRY(((!\timer_circuit|Add0~47\) # (!\timer_circuit|timer1\(19))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(19),
	cin => \timer_circuit|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~50_combout\,
	cout0 => \timer_circuit|Add0~52\,
	cout1 => \timer_circuit|Add0~52COUT1_161\);

-- Location: LC_X7_Y8_N9
\timer_circuit|timer1[19]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(19) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~50_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(19));

-- Location: LC_X7_Y8_N5
\timer_circuit|timer1[20]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~2\ = (\timer_circuit|timer1\(18) & (!\timer_circuit|timer1\(17) & (B1_timer1[20] & !\timer_circuit|timer1\(19))))
-- \timer_circuit|timer1\(20) = DFFEAS(\timer_circuit|Equal0~2\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer1\(18),
	datab => \timer_circuit|timer1\(17),
	datac => \timer_circuit|Add0~40_combout\,
	datad => \timer_circuit|timer1\(19),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~2\,
	regout => \timer_circuit|timer1\(20));

-- Location: LC_X12_Y8_N1
\timer_circuit|Add0~40\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~40_combout\ = (\timer_circuit|timer1\(20) $ ((!(!\timer_circuit|Add0~47\ & \timer_circuit|Add0~52\) # (\timer_circuit|Add0~47\ & \timer_circuit|Add0~52COUT1_161\))))
-- \timer_circuit|Add0~42\ = CARRY(((\timer_circuit|timer1\(20) & !\timer_circuit|Add0~52\)))
-- \timer_circuit|Add0~42COUT1_162\ = CARRY(((\timer_circuit|timer1\(20) & !\timer_circuit|Add0~52COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(20),
	cin => \timer_circuit|Add0~47\,
	cin0 => \timer_circuit|Add0~52\,
	cin1 => \timer_circuit|Add0~52COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~40_combout\,
	cout0 => \timer_circuit|Add0~42\,
	cout1 => \timer_circuit|Add0~42COUT1_162\);

-- Location: LC_X12_Y8_N2
\timer_circuit|Add0~35\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~35_combout\ = (\timer_circuit|timer1\(21) $ (((!\timer_circuit|Add0~47\ & \timer_circuit|Add0~42\) # (\timer_circuit|Add0~47\ & \timer_circuit|Add0~42COUT1_162\))))
-- \timer_circuit|Add0~37\ = CARRY(((!\timer_circuit|Add0~42\) # (!\timer_circuit|timer1\(21))))
-- \timer_circuit|Add0~37COUT1_163\ = CARRY(((!\timer_circuit|Add0~42COUT1_162\) # (!\timer_circuit|timer1\(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(21),
	cin => \timer_circuit|Add0~47\,
	cin0 => \timer_circuit|Add0~42\,
	cin1 => \timer_circuit|Add0~42COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~35_combout\,
	cout0 => \timer_circuit|Add0~37\,
	cout1 => \timer_circuit|Add0~37COUT1_163\);

-- Location: LC_X7_Y8_N1
\timer_circuit|timer1[21]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(21) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~35_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(21));

-- Location: LC_X12_Y8_N3
\timer_circuit|Add0~30\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~30_combout\ = \timer_circuit|timer1\(22) $ ((((!(!\timer_circuit|Add0~47\ & \timer_circuit|Add0~37\) # (\timer_circuit|Add0~47\ & \timer_circuit|Add0~37COUT1_163\)))))
-- \timer_circuit|Add0~32\ = CARRY((\timer_circuit|timer1\(22) & ((!\timer_circuit|Add0~37\))))
-- \timer_circuit|Add0~32COUT1_164\ = CARRY((\timer_circuit|timer1\(22) & ((!\timer_circuit|Add0~37COUT1_163\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(22),
	cin => \timer_circuit|Add0~47\,
	cin0 => \timer_circuit|Add0~37\,
	cin1 => \timer_circuit|Add0~37COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~30_combout\,
	cout0 => \timer_circuit|Add0~32\,
	cout1 => \timer_circuit|Add0~32COUT1_164\);

-- Location: LC_X9_Y8_N8
\timer_circuit|timer1[22]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(22) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~30_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(22));

-- Location: LC_X12_Y8_N4
\timer_circuit|Add0~25\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~25_combout\ = (\timer_circuit|timer1\(23) $ (((!\timer_circuit|Add0~47\ & \timer_circuit|Add0~32\) # (\timer_circuit|Add0~47\ & \timer_circuit|Add0~32COUT1_164\))))
-- \timer_circuit|Add0~27\ = CARRY(((!\timer_circuit|Add0~32COUT1_164\) # (!\timer_circuit|timer1\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(23),
	cin => \timer_circuit|Add0~47\,
	cin0 => \timer_circuit|Add0~32\,
	cin1 => \timer_circuit|Add0~32COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~25_combout\,
	cout => \timer_circuit|Add0~27\);

-- Location: LC_X7_Y8_N7
\timer_circuit|timer1[23]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(23) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~25_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(23));

-- Location: LC_X12_Y8_N5
\timer_circuit|Add0~20\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~20_combout\ = \timer_circuit|timer1\(24) $ ((((!\timer_circuit|Add0~27\))))
-- \timer_circuit|Add0~22\ = CARRY((\timer_circuit|timer1\(24) & ((!\timer_circuit|Add0~27\))))
-- \timer_circuit|Add0~22COUT1_165\ = CARRY((\timer_circuit|timer1\(24) & ((!\timer_circuit|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(24),
	cin => \timer_circuit|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~20_combout\,
	cout0 => \timer_circuit|Add0~22\,
	cout1 => \timer_circuit|Add0~22COUT1_165\);

-- Location: LC_X8_Y8_N1
\timer_circuit|timer1[24]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~1\ = (\timer_circuit|timer1\(21) & (\timer_circuit|timer1\(23) & (B1_timer1[24] & \timer_circuit|timer1\(22))))
-- \timer_circuit|timer1\(24) = DFFEAS(\timer_circuit|Equal0~1\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer1\(21),
	datab => \timer_circuit|timer1\(23),
	datac => \timer_circuit|Add0~20_combout\,
	datad => \timer_circuit|timer1\(22),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~1\,
	regout => \timer_circuit|timer1\(24));

-- Location: LC_X12_Y8_N6
\timer_circuit|Add0~15\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~15_combout\ = (\timer_circuit|timer1\(25) $ (((!\timer_circuit|Add0~27\ & \timer_circuit|Add0~22\) # (\timer_circuit|Add0~27\ & \timer_circuit|Add0~22COUT1_165\))))
-- \timer_circuit|Add0~17\ = CARRY(((!\timer_circuit|Add0~22\) # (!\timer_circuit|timer1\(25))))
-- \timer_circuit|Add0~17COUT1_166\ = CARRY(((!\timer_circuit|Add0~22COUT1_165\) # (!\timer_circuit|timer1\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(25),
	cin => \timer_circuit|Add0~27\,
	cin0 => \timer_circuit|Add0~22\,
	cin1 => \timer_circuit|Add0~22COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~15_combout\,
	cout0 => \timer_circuit|Add0~17\,
	cout1 => \timer_circuit|Add0~17COUT1_166\);

-- Location: LC_X7_Y8_N4
\timer_circuit|timer1[25]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(25) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~15_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(25));

-- Location: LC_X12_Y8_N7
\timer_circuit|Add0~0\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~0_combout\ = \timer_circuit|timer1\(26) $ ((((!(!\timer_circuit|Add0~27\ & \timer_circuit|Add0~17\) # (\timer_circuit|Add0~27\ & \timer_circuit|Add0~17COUT1_166\)))))
-- \timer_circuit|Add0~2\ = CARRY((\timer_circuit|timer1\(26) & ((!\timer_circuit|Add0~17\))))
-- \timer_circuit|Add0~2COUT1_167\ = CARRY((\timer_circuit|timer1\(26) & ((!\timer_circuit|Add0~17COUT1_166\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer1\(26),
	cin => \timer_circuit|Add0~27\,
	cin0 => \timer_circuit|Add0~17\,
	cin1 => \timer_circuit|Add0~17COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~0_combout\,
	cout0 => \timer_circuit|Add0~2\,
	cout1 => \timer_circuit|Add0~2COUT1_167\);

-- Location: LC_X8_Y8_N4
\timer_circuit|timer1[26]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~0\ = (!\timer_circuit|timer1\(28) & (!\timer_circuit|timer1\(27) & (B1_timer1[26] & !\timer_circuit|timer1\(25))))
-- \timer_circuit|timer1\(26) = DFFEAS(\timer_circuit|Equal0~0\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer1\(28),
	datab => \timer_circuit|timer1\(27),
	datac => \timer_circuit|Add0~0_combout\,
	datad => \timer_circuit|timer1\(25),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~0\,
	regout => \timer_circuit|timer1\(26));

-- Location: LC_X12_Y8_N8
\timer_circuit|Add0~10\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~10_combout\ = (\timer_circuit|timer1\(27) $ (((!\timer_circuit|Add0~27\ & \timer_circuit|Add0~2\) # (\timer_circuit|Add0~27\ & \timer_circuit|Add0~2COUT1_167\))))
-- \timer_circuit|Add0~12\ = CARRY(((!\timer_circuit|Add0~2\) # (!\timer_circuit|timer1\(27))))
-- \timer_circuit|Add0~12COUT1_168\ = CARRY(((!\timer_circuit|Add0~2COUT1_167\) # (!\timer_circuit|timer1\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer1\(27),
	cin => \timer_circuit|Add0~27\,
	cin0 => \timer_circuit|Add0~2\,
	cin1 => \timer_circuit|Add0~2COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~10_combout\,
	cout0 => \timer_circuit|Add0~12\,
	cout1 => \timer_circuit|Add0~12COUT1_168\);

-- Location: LC_X8_Y8_N0
\timer_circuit|timer1[27]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(27) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~10_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(27));

-- Location: LC_X12_Y8_N9
\timer_circuit|Add0~5\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add0~5_combout\ = (((!\timer_circuit|Add0~27\ & \timer_circuit|Add0~12\) # (\timer_circuit|Add0~27\ & \timer_circuit|Add0~12COUT1_168\) $ (!\timer_circuit|timer1\(28))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \timer_circuit|timer1\(28),
	cin => \timer_circuit|Add0~27\,
	cin0 => \timer_circuit|Add0~12\,
	cin1 => \timer_circuit|Add0~12COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add0~5_combout\);

-- Location: LC_X8_Y8_N8
\timer_circuit|timer1[28]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer1\(28) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux3~0_combout\, \timer_circuit|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add0~5_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer1\(28));

-- Location: LC_X8_Y8_N6
\timer_circuit|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal0~4_combout\ = (\timer_circuit|Equal0~2\ & (\timer_circuit|Equal0~3\ & (\timer_circuit|Equal0~0\ & \timer_circuit|Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|Equal0~2\,
	datab => \timer_circuit|Equal0~3\,
	datac => \timer_circuit|Equal0~0\,
	datad => \timer_circuit|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal0~4_combout\);

-- Location: LC_X8_Y8_N7
\timer_circuit|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Mux3~0_combout\ = (!\FSM_output[1]~4_combout\ & (\FSM_output[0]~3_combout\ & ((!\timer_circuit|Equal0~4_combout\) # (!\timer_circuit|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_output[1]~4_combout\,
	datab => \FSM_output[0]~3_combout\,
	datac => \timer_circuit|Equal0~8_combout\,
	datad => \timer_circuit|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Mux3~0_combout\);

-- Location: LC_X7_Y8_N2
\timer_circuit|LED[0]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|LED\(0) = DFFEAS((((\clock_1~combout\ & \timer_circuit|Mux3~0_combout\))), GLOBAL(\clock_50~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \clock_1~combout\,
	datad => \timer_circuit|Mux3~0_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|LED\(0));

-- Location: LC_X8_Y7_N5
\timer_circuit|timer2[0]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(0) = DFFEAS(((\timer_circuit|timer2\(0) $ (\timer_circuit|Mux2~0_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|timer2\(0),
	datad => \timer_circuit|Mux2~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(0));

-- Location: LC_X9_Y7_N1
\timer_circuit|Add1~142\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~142_cout0\ = CARRY((!\timer_circuit|timer2\(0)))
-- \timer_circuit|Add1~142COUT1_146\ = CARRY((!\timer_circuit|timer2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~140\,
	cout0 => \timer_circuit|Add1~142_cout0\,
	cout1 => \timer_circuit|Add1~142COUT1_146\);

-- Location: LC_X9_Y7_N2
\timer_circuit|Add1~135\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~135_combout\ = (\timer_circuit|timer2\(1) $ ((\timer_circuit|Add1~142_cout0\)))
-- \timer_circuit|Add1~137\ = CARRY(((!\timer_circuit|Add1~142_cout0\) # (!\timer_circuit|timer2\(1))))
-- \timer_circuit|Add1~137COUT1_147\ = CARRY(((!\timer_circuit|Add1~142COUT1_146\) # (!\timer_circuit|timer2\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(1),
	cin0 => \timer_circuit|Add1~142_cout0\,
	cin1 => \timer_circuit|Add1~142COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~135_combout\,
	cout0 => \timer_circuit|Add1~137\,
	cout1 => \timer_circuit|Add1~137COUT1_147\);

-- Location: LC_X9_Y7_N0
\timer_circuit|timer2[1]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(1) = DFFEAS((((\timer_circuit|Add1~135_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add1~135_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(1));

-- Location: LC_X9_Y7_N3
\timer_circuit|Add1~130\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~130_combout\ = (\timer_circuit|timer2\(2) $ ((!\timer_circuit|Add1~137\)))
-- \timer_circuit|Add1~132\ = CARRY(((\timer_circuit|timer2\(2) & !\timer_circuit|Add1~137\)))
-- \timer_circuit|Add1~132COUT1_148\ = CARRY(((\timer_circuit|timer2\(2) & !\timer_circuit|Add1~137COUT1_147\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(2),
	cin0 => \timer_circuit|Add1~137\,
	cin1 => \timer_circuit|Add1~137COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~130_combout\,
	cout0 => \timer_circuit|Add1~132\,
	cout1 => \timer_circuit|Add1~132COUT1_148\);

-- Location: LC_X8_Y6_N1
\timer_circuit|timer2[2]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(2) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~130_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(2));

-- Location: LC_X9_Y7_N4
\timer_circuit|Add1~125\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~125_combout\ = (\timer_circuit|timer2\(3) $ ((\timer_circuit|Add1~132\)))
-- \timer_circuit|Add1~127\ = CARRY(((!\timer_circuit|Add1~132COUT1_148\) # (!\timer_circuit|timer2\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(3),
	cin0 => \timer_circuit|Add1~132\,
	cin1 => \timer_circuit|Add1~132COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~125_combout\,
	cout => \timer_circuit|Add1~127\);

-- Location: LC_X8_Y6_N6
\timer_circuit|timer2[3]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(3) = DFFEAS((((\timer_circuit|Add1~125_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add1~125_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(3));

-- Location: LC_X9_Y7_N5
\timer_circuit|Add1~120\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~120_combout\ = (\timer_circuit|timer2\(4) $ ((!\timer_circuit|Add1~127\)))
-- \timer_circuit|Add1~122\ = CARRY(((\timer_circuit|timer2\(4) & !\timer_circuit|Add1~127\)))
-- \timer_circuit|Add1~122COUT1_149\ = CARRY(((\timer_circuit|timer2\(4) & !\timer_circuit|Add1~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(4),
	cin => \timer_circuit|Add1~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~120_combout\,
	cout0 => \timer_circuit|Add1~122\,
	cout1 => \timer_circuit|Add1~122COUT1_149\);

-- Location: LC_X8_Y6_N5
\timer_circuit|timer2[4]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~7\ = (!\timer_circuit|timer2\(1) & (!\timer_circuit|timer2\(3) & (!B1_timer2[4] & !\timer_circuit|timer2\(2))))
-- \timer_circuit|timer2\(4) = DFFEAS(\timer_circuit|Equal1~7\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer2\(1),
	datab => \timer_circuit|timer2\(3),
	datac => \timer_circuit|Add1~120_combout\,
	datad => \timer_circuit|timer2\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~7\,
	regout => \timer_circuit|timer2\(4));

-- Location: LC_X9_Y7_N6
\timer_circuit|Add1~115\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~115_combout\ = (\timer_circuit|timer2\(5) $ (((!\timer_circuit|Add1~127\ & \timer_circuit|Add1~122\) # (\timer_circuit|Add1~127\ & \timer_circuit|Add1~122COUT1_149\))))
-- \timer_circuit|Add1~117\ = CARRY(((!\timer_circuit|Add1~122\) # (!\timer_circuit|timer2\(5))))
-- \timer_circuit|Add1~117COUT1_150\ = CARRY(((!\timer_circuit|Add1~122COUT1_149\) # (!\timer_circuit|timer2\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(5),
	cin => \timer_circuit|Add1~127\,
	cin0 => \timer_circuit|Add1~122\,
	cin1 => \timer_circuit|Add1~122COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~115_combout\,
	cout0 => \timer_circuit|Add1~117\,
	cout1 => \timer_circuit|Add1~117COUT1_150\);

-- Location: LC_X8_Y6_N7
\timer_circuit|timer2[5]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(5) = DFFEAS((((\timer_circuit|Add1~115_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add1~115_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(5));

-- Location: LC_X9_Y7_N7
\timer_circuit|Add1~110\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~110_combout\ = (\timer_circuit|timer2\(6) $ ((!(!\timer_circuit|Add1~127\ & \timer_circuit|Add1~117\) # (\timer_circuit|Add1~127\ & \timer_circuit|Add1~117COUT1_150\))))
-- \timer_circuit|Add1~112\ = CARRY(((\timer_circuit|timer2\(6) & !\timer_circuit|Add1~117\)))
-- \timer_circuit|Add1~112COUT1_151\ = CARRY(((\timer_circuit|timer2\(6) & !\timer_circuit|Add1~117COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(6),
	cin => \timer_circuit|Add1~127\,
	cin0 => \timer_circuit|Add1~117\,
	cin1 => \timer_circuit|Add1~117COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~110_combout\,
	cout0 => \timer_circuit|Add1~112\,
	cout1 => \timer_circuit|Add1~112COUT1_151\);

-- Location: LC_X8_Y6_N2
\timer_circuit|timer2[6]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(6) = DFFEAS((((\timer_circuit|Add1~110_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add1~110_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(6));

-- Location: LC_X9_Y7_N8
\timer_circuit|Add1~105\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~105_combout\ = (\timer_circuit|timer2\(7) $ (((!\timer_circuit|Add1~127\ & \timer_circuit|Add1~112\) # (\timer_circuit|Add1~127\ & \timer_circuit|Add1~112COUT1_151\))))
-- \timer_circuit|Add1~107\ = CARRY(((!\timer_circuit|Add1~112\) # (!\timer_circuit|timer2\(7))))
-- \timer_circuit|Add1~107COUT1_152\ = CARRY(((!\timer_circuit|Add1~112COUT1_151\) # (!\timer_circuit|timer2\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(7),
	cin => \timer_circuit|Add1~127\,
	cin0 => \timer_circuit|Add1~112\,
	cin1 => \timer_circuit|Add1~112COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~105_combout\,
	cout0 => \timer_circuit|Add1~107\,
	cout1 => \timer_circuit|Add1~107COUT1_152\);

-- Location: LC_X8_Y6_N4
\timer_circuit|timer2[7]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(7) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~105_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(7));

-- Location: LC_X9_Y7_N9
\timer_circuit|Add1~100\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~100_combout\ = (\timer_circuit|timer2\(8) $ ((!(!\timer_circuit|Add1~127\ & \timer_circuit|Add1~107\) # (\timer_circuit|Add1~127\ & \timer_circuit|Add1~107COUT1_152\))))
-- \timer_circuit|Add1~102\ = CARRY(((\timer_circuit|timer2\(8) & !\timer_circuit|Add1~107COUT1_152\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(8),
	cin => \timer_circuit|Add1~127\,
	cin0 => \timer_circuit|Add1~107\,
	cin1 => \timer_circuit|Add1~107COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~100_combout\,
	cout => \timer_circuit|Add1~102\);

-- Location: LC_X8_Y6_N3
\timer_circuit|timer2[8]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~6\ = (!\timer_circuit|timer2\(7) & (!\timer_circuit|timer2\(5) & (!B1_timer2[8] & !\timer_circuit|timer2\(6))))
-- \timer_circuit|timer2\(8) = DFFEAS(\timer_circuit|Equal1~6\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer2\(7),
	datab => \timer_circuit|timer2\(5),
	datac => \timer_circuit|Add1~100_combout\,
	datad => \timer_circuit|timer2\(6),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~6\,
	regout => \timer_circuit|timer2\(8));

-- Location: LC_X10_Y7_N0
\timer_circuit|Add1~80\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~80_combout\ = \timer_circuit|timer2\(9) $ ((((\timer_circuit|Add1~102\))))
-- \timer_circuit|Add1~82\ = CARRY(((!\timer_circuit|Add1~102\)) # (!\timer_circuit|timer2\(9)))
-- \timer_circuit|Add1~82COUT1_153\ = CARRY(((!\timer_circuit|Add1~102\)) # (!\timer_circuit|timer2\(9)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer2\(9),
	cin => \timer_circuit|Add1~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~80_combout\,
	cout0 => \timer_circuit|Add1~82\,
	cout1 => \timer_circuit|Add1~82COUT1_153\);

-- Location: LC_X9_Y6_N1
\timer_circuit|timer2[9]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~5\ = (!\timer_circuit|timer2\(11) & (!\timer_circuit|timer2\(12) & (B1_timer2[9] & !\timer_circuit|timer2\(10))))
-- \timer_circuit|timer2\(9) = DFFEAS(\timer_circuit|Equal1~5\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer2\(11),
	datab => \timer_circuit|timer2\(12),
	datac => \timer_circuit|Add1~80_combout\,
	datad => \timer_circuit|timer2\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~5\,
	regout => \timer_circuit|timer2\(9));

-- Location: LC_X10_Y7_N1
\timer_circuit|Add1~95\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~95_combout\ = (\timer_circuit|timer2\(10) $ ((!(!\timer_circuit|Add1~102\ & \timer_circuit|Add1~82\) # (\timer_circuit|Add1~102\ & \timer_circuit|Add1~82COUT1_153\))))
-- \timer_circuit|Add1~97\ = CARRY(((\timer_circuit|timer2\(10) & !\timer_circuit|Add1~82\)))
-- \timer_circuit|Add1~97COUT1_154\ = CARRY(((\timer_circuit|timer2\(10) & !\timer_circuit|Add1~82COUT1_153\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(10),
	cin => \timer_circuit|Add1~102\,
	cin0 => \timer_circuit|Add1~82\,
	cin1 => \timer_circuit|Add1~82COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~95_combout\,
	cout0 => \timer_circuit|Add1~97\,
	cout1 => \timer_circuit|Add1~97COUT1_154\);

-- Location: LC_X9_Y6_N2
\timer_circuit|timer2[10]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(10) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~95_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(10));

-- Location: LC_X10_Y7_N2
\timer_circuit|Add1~90\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~90_combout\ = \timer_circuit|timer2\(11) $ (((((!\timer_circuit|Add1~102\ & \timer_circuit|Add1~97\) # (\timer_circuit|Add1~102\ & \timer_circuit|Add1~97COUT1_154\)))))
-- \timer_circuit|Add1~92\ = CARRY(((!\timer_circuit|Add1~97\)) # (!\timer_circuit|timer2\(11)))
-- \timer_circuit|Add1~92COUT1_155\ = CARRY(((!\timer_circuit|Add1~97COUT1_154\)) # (!\timer_circuit|timer2\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer2\(11),
	cin => \timer_circuit|Add1~102\,
	cin0 => \timer_circuit|Add1~97\,
	cin1 => \timer_circuit|Add1~97COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~90_combout\,
	cout0 => \timer_circuit|Add1~92\,
	cout1 => \timer_circuit|Add1~92COUT1_155\);

-- Location: LC_X9_Y6_N5
\timer_circuit|timer2[11]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(11) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~90_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(11));

-- Location: LC_X10_Y7_N3
\timer_circuit|Add1~85\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~85_combout\ = (\timer_circuit|timer2\(12) $ ((!(!\timer_circuit|Add1~102\ & \timer_circuit|Add1~92\) # (\timer_circuit|Add1~102\ & \timer_circuit|Add1~92COUT1_155\))))
-- \timer_circuit|Add1~87\ = CARRY(((\timer_circuit|timer2\(12) & !\timer_circuit|Add1~92\)))
-- \timer_circuit|Add1~87COUT1_156\ = CARRY(((\timer_circuit|timer2\(12) & !\timer_circuit|Add1~92COUT1_155\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(12),
	cin => \timer_circuit|Add1~102\,
	cin0 => \timer_circuit|Add1~92\,
	cin1 => \timer_circuit|Add1~92COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~85_combout\,
	cout0 => \timer_circuit|Add1~87\,
	cout1 => \timer_circuit|Add1~87COUT1_156\);

-- Location: LC_X9_Y6_N0
\timer_circuit|timer2[12]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(12) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~85_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(12));

-- Location: LC_X10_Y7_N4
\timer_circuit|Add1~75\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~75_combout\ = (\timer_circuit|timer2\(13) $ (((!\timer_circuit|Add1~102\ & \timer_circuit|Add1~87\) # (\timer_circuit|Add1~102\ & \timer_circuit|Add1~87COUT1_156\))))
-- \timer_circuit|Add1~77\ = CARRY(((!\timer_circuit|Add1~87COUT1_156\) # (!\timer_circuit|timer2\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(13),
	cin => \timer_circuit|Add1~102\,
	cin0 => \timer_circuit|Add1~87\,
	cin1 => \timer_circuit|Add1~87COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~75_combout\,
	cout => \timer_circuit|Add1~77\);

-- Location: LC_X10_Y6_N5
\timer_circuit|timer2[13]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(13) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~75_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(13));

-- Location: LC_X10_Y7_N5
\timer_circuit|Add1~70\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~70_combout\ = (\timer_circuit|timer2\(14) $ ((!\timer_circuit|Add1~77\)))
-- \timer_circuit|Add1~72\ = CARRY(((\timer_circuit|timer2\(14) & !\timer_circuit|Add1~77\)))
-- \timer_circuit|Add1~72COUT1_157\ = CARRY(((\timer_circuit|timer2\(14) & !\timer_circuit|Add1~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(14),
	cin => \timer_circuit|Add1~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~70_combout\,
	cout0 => \timer_circuit|Add1~72\,
	cout1 => \timer_circuit|Add1~72COUT1_157\);

-- Location: LC_X10_Y6_N8
\timer_circuit|timer2[14]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(14) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~70_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(14));

-- Location: LC_X10_Y7_N6
\timer_circuit|Add1~65\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~65_combout\ = (\timer_circuit|timer2\(15) $ (((!\timer_circuit|Add1~77\ & \timer_circuit|Add1~72\) # (\timer_circuit|Add1~77\ & \timer_circuit|Add1~72COUT1_157\))))
-- \timer_circuit|Add1~67\ = CARRY(((!\timer_circuit|Add1~72\) # (!\timer_circuit|timer2\(15))))
-- \timer_circuit|Add1~67COUT1_158\ = CARRY(((!\timer_circuit|Add1~72COUT1_157\) # (!\timer_circuit|timer2\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(15),
	cin => \timer_circuit|Add1~77\,
	cin0 => \timer_circuit|Add1~72\,
	cin1 => \timer_circuit|Add1~72COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~65_combout\,
	cout0 => \timer_circuit|Add1~67\,
	cout1 => \timer_circuit|Add1~67COUT1_158\);

-- Location: LC_X10_Y6_N0
\timer_circuit|timer2[15]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(15) = DFFEAS((((\timer_circuit|Add1~65_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add1~65_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(15));

-- Location: LC_X10_Y7_N7
\timer_circuit|Add1~60\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~60_combout\ = (\timer_circuit|timer2\(16) $ ((!(!\timer_circuit|Add1~77\ & \timer_circuit|Add1~67\) # (\timer_circuit|Add1~77\ & \timer_circuit|Add1~67COUT1_158\))))
-- \timer_circuit|Add1~62\ = CARRY(((\timer_circuit|timer2\(16) & !\timer_circuit|Add1~67\)))
-- \timer_circuit|Add1~62COUT1_159\ = CARRY(((\timer_circuit|timer2\(16) & !\timer_circuit|Add1~67COUT1_158\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(16),
	cin => \timer_circuit|Add1~77\,
	cin0 => \timer_circuit|Add1~67\,
	cin1 => \timer_circuit|Add1~67COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~60_combout\,
	cout0 => \timer_circuit|Add1~62\,
	cout1 => \timer_circuit|Add1~62COUT1_159\);

-- Location: LC_X10_Y6_N2
\timer_circuit|timer2[16]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~3\ = (!\timer_circuit|timer2\(13) & (\timer_circuit|timer2\(15) & (B1_timer2[16] & \timer_circuit|timer2\(14))))
-- \timer_circuit|timer2\(16) = DFFEAS(\timer_circuit|Equal1~3\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer2\(13),
	datab => \timer_circuit|timer2\(15),
	datac => \timer_circuit|Add1~60_combout\,
	datad => \timer_circuit|timer2\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~3\,
	regout => \timer_circuit|timer2\(16));

-- Location: LC_X10_Y7_N8
\timer_circuit|Add1~45\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~45_combout\ = (\timer_circuit|timer2\(17) $ (((!\timer_circuit|Add1~77\ & \timer_circuit|Add1~62\) # (\timer_circuit|Add1~77\ & \timer_circuit|Add1~62COUT1_159\))))
-- \timer_circuit|Add1~47\ = CARRY(((!\timer_circuit|Add1~62\) # (!\timer_circuit|timer2\(17))))
-- \timer_circuit|Add1~47COUT1_160\ = CARRY(((!\timer_circuit|Add1~62COUT1_159\) # (!\timer_circuit|timer2\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(17),
	cin => \timer_circuit|Add1~77\,
	cin0 => \timer_circuit|Add1~62\,
	cin1 => \timer_circuit|Add1~62COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~45_combout\,
	cout0 => \timer_circuit|Add1~47\,
	cout1 => \timer_circuit|Add1~47COUT1_160\);

-- Location: LC_X10_Y6_N7
\timer_circuit|timer2[17]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(17) = DFFEAS((((\timer_circuit|Add1~45_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add1~45_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(17));

-- Location: LC_X10_Y7_N9
\timer_circuit|Add1~55\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~55_combout\ = \timer_circuit|timer2\(18) $ ((((!(!\timer_circuit|Add1~77\ & \timer_circuit|Add1~47\) # (\timer_circuit|Add1~77\ & \timer_circuit|Add1~47COUT1_160\)))))
-- \timer_circuit|Add1~57\ = CARRY((\timer_circuit|timer2\(18) & ((!\timer_circuit|Add1~47COUT1_160\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer2\(18),
	cin => \timer_circuit|Add1~77\,
	cin0 => \timer_circuit|Add1~47\,
	cin1 => \timer_circuit|Add1~47COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~55_combout\,
	cout => \timer_circuit|Add1~57\);

-- Location: LC_X10_Y6_N1
\timer_circuit|timer2[18]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(18) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~55_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(18));

-- Location: LC_X11_Y7_N0
\timer_circuit|Add1~40\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~40_combout\ = (\timer_circuit|timer2\(19) $ ((\timer_circuit|Add1~57\)))
-- \timer_circuit|Add1~42\ = CARRY(((!\timer_circuit|Add1~57\) # (!\timer_circuit|timer2\(19))))
-- \timer_circuit|Add1~42COUT1_161\ = CARRY(((!\timer_circuit|Add1~57\) # (!\timer_circuit|timer2\(19))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(19),
	cin => \timer_circuit|Add1~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~40_combout\,
	cout0 => \timer_circuit|Add1~42\,
	cout1 => \timer_circuit|Add1~42COUT1_161\);

-- Location: LC_X10_Y6_N6
\timer_circuit|timer2[19]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~2\ = (!\timer_circuit|timer2\(20) & (\timer_circuit|timer2\(17) & (B1_timer2[19] & !\timer_circuit|timer2\(18))))
-- \timer_circuit|timer2\(19) = DFFEAS(\timer_circuit|Equal1~2\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer2\(20),
	datab => \timer_circuit|timer2\(17),
	datac => \timer_circuit|Add1~40_combout\,
	datad => \timer_circuit|timer2\(18),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~2\,
	regout => \timer_circuit|timer2\(19));

-- Location: LC_X11_Y7_N1
\timer_circuit|Add1~50\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~50_combout\ = (\timer_circuit|timer2\(20) $ ((!(!\timer_circuit|Add1~57\ & \timer_circuit|Add1~42\) # (\timer_circuit|Add1~57\ & \timer_circuit|Add1~42COUT1_161\))))
-- \timer_circuit|Add1~52\ = CARRY(((\timer_circuit|timer2\(20) & !\timer_circuit|Add1~42\)))
-- \timer_circuit|Add1~52COUT1_162\ = CARRY(((\timer_circuit|timer2\(20) & !\timer_circuit|Add1~42COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(20),
	cin => \timer_circuit|Add1~57\,
	cin0 => \timer_circuit|Add1~42\,
	cin1 => \timer_circuit|Add1~42COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~50_combout\,
	cout0 => \timer_circuit|Add1~52\,
	cout1 => \timer_circuit|Add1~52COUT1_162\);

-- Location: LC_X10_Y6_N3
\timer_circuit|timer2[20]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(20) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~50_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(20));

-- Location: LC_X11_Y7_N2
\timer_circuit|Add1~35\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~35_combout\ = \timer_circuit|timer2\(21) $ (((((!\timer_circuit|Add1~57\ & \timer_circuit|Add1~52\) # (\timer_circuit|Add1~57\ & \timer_circuit|Add1~52COUT1_162\)))))
-- \timer_circuit|Add1~37\ = CARRY(((!\timer_circuit|Add1~52\)) # (!\timer_circuit|timer2\(21)))
-- \timer_circuit|Add1~37COUT1_163\ = CARRY(((!\timer_circuit|Add1~52COUT1_162\)) # (!\timer_circuit|timer2\(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer2\(21),
	cin => \timer_circuit|Add1~57\,
	cin0 => \timer_circuit|Add1~52\,
	cin1 => \timer_circuit|Add1~52COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~35_combout\,
	cout0 => \timer_circuit|Add1~37\,
	cout1 => \timer_circuit|Add1~37COUT1_163\);

-- Location: LC_X11_Y6_N4
\timer_circuit|timer2[21]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(21) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~35_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(21));

-- Location: LC_X11_Y7_N3
\timer_circuit|Add1~30\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~30_combout\ = (\timer_circuit|timer2\(22) $ ((!(!\timer_circuit|Add1~57\ & \timer_circuit|Add1~37\) # (\timer_circuit|Add1~57\ & \timer_circuit|Add1~37COUT1_163\))))
-- \timer_circuit|Add1~32\ = CARRY(((\timer_circuit|timer2\(22) & !\timer_circuit|Add1~37\)))
-- \timer_circuit|Add1~32COUT1_164\ = CARRY(((\timer_circuit|timer2\(22) & !\timer_circuit|Add1~37COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(22),
	cin => \timer_circuit|Add1~57\,
	cin0 => \timer_circuit|Add1~37\,
	cin1 => \timer_circuit|Add1~37COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~30_combout\,
	cout0 => \timer_circuit|Add1~32\,
	cout1 => \timer_circuit|Add1~32COUT1_164\);

-- Location: LC_X11_Y6_N9
\timer_circuit|timer2[22]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(22) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~30_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(22));

-- Location: LC_X11_Y7_N4
\timer_circuit|Add1~25\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~25_combout\ = \timer_circuit|timer2\(23) $ (((((!\timer_circuit|Add1~57\ & \timer_circuit|Add1~32\) # (\timer_circuit|Add1~57\ & \timer_circuit|Add1~32COUT1_164\)))))
-- \timer_circuit|Add1~27\ = CARRY(((!\timer_circuit|Add1~32COUT1_164\)) # (!\timer_circuit|timer2\(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer2\(23),
	cin => \timer_circuit|Add1~57\,
	cin0 => \timer_circuit|Add1~32\,
	cin1 => \timer_circuit|Add1~32COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~25_combout\,
	cout => \timer_circuit|Add1~27\);

-- Location: LC_X11_Y6_N1
\timer_circuit|timer2[23]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(23) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~25_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(23));

-- Location: LC_X11_Y7_N5
\timer_circuit|Add1~20\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~20_combout\ = (\timer_circuit|timer2\(24) $ ((!\timer_circuit|Add1~27\)))
-- \timer_circuit|Add1~22\ = CARRY(((\timer_circuit|timer2\(24) & !\timer_circuit|Add1~27\)))
-- \timer_circuit|Add1~22COUT1_165\ = CARRY(((\timer_circuit|timer2\(24) & !\timer_circuit|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(24),
	cin => \timer_circuit|Add1~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~20_combout\,
	cout0 => \timer_circuit|Add1~22\,
	cout1 => \timer_circuit|Add1~22COUT1_165\);

-- Location: LC_X11_Y6_N5
\timer_circuit|timer2[24]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~1\ = (\timer_circuit|timer2\(21) & (\timer_circuit|timer2\(23) & (B1_timer2[24] & \timer_circuit|timer2\(22))))
-- \timer_circuit|timer2\(24) = DFFEAS(\timer_circuit|Equal1~1\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer2\(21),
	datab => \timer_circuit|timer2\(23),
	datac => \timer_circuit|Add1~20_combout\,
	datad => \timer_circuit|timer2\(22),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~1\,
	regout => \timer_circuit|timer2\(24));

-- Location: LC_X11_Y7_N6
\timer_circuit|Add1~5\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~5_combout\ = \timer_circuit|timer2\(25) $ (((((!\timer_circuit|Add1~27\ & \timer_circuit|Add1~22\) # (\timer_circuit|Add1~27\ & \timer_circuit|Add1~22COUT1_165\)))))
-- \timer_circuit|Add1~7\ = CARRY(((!\timer_circuit|Add1~22\)) # (!\timer_circuit|timer2\(25)))
-- \timer_circuit|Add1~7COUT1_166\ = CARRY(((!\timer_circuit|Add1~22COUT1_165\)) # (!\timer_circuit|timer2\(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer2\(25),
	cin => \timer_circuit|Add1~27\,
	cin0 => \timer_circuit|Add1~22\,
	cin1 => \timer_circuit|Add1~22COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~5_combout\,
	cout0 => \timer_circuit|Add1~7\,
	cout1 => \timer_circuit|Add1~7COUT1_166\);

-- Location: LC_X11_Y6_N6
\timer_circuit|timer2[25]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(25) = DFFEAS((((\timer_circuit|Add1~5_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add1~5_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(25));

-- Location: LC_X11_Y7_N7
\timer_circuit|Add1~15\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~15_combout\ = (\timer_circuit|timer2\(26) $ ((!(!\timer_circuit|Add1~27\ & \timer_circuit|Add1~7\) # (\timer_circuit|Add1~27\ & \timer_circuit|Add1~7COUT1_166\))))
-- \timer_circuit|Add1~17\ = CARRY(((\timer_circuit|timer2\(26) & !\timer_circuit|Add1~7\)))
-- \timer_circuit|Add1~17COUT1_167\ = CARRY(((\timer_circuit|timer2\(26) & !\timer_circuit|Add1~7COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(26),
	cin => \timer_circuit|Add1~27\,
	cin0 => \timer_circuit|Add1~7\,
	cin1 => \timer_circuit|Add1~7COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~15_combout\,
	cout0 => \timer_circuit|Add1~17\,
	cout1 => \timer_circuit|Add1~17COUT1_167\);

-- Location: LC_X11_Y6_N2
\timer_circuit|timer2[26]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(26) = DFFEAS((((\timer_circuit|Add1~15_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add1~15_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(26));

-- Location: LC_X11_Y7_N8
\timer_circuit|Add1~0\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~0_combout\ = (\timer_circuit|timer2\(27) $ (((!\timer_circuit|Add1~27\ & \timer_circuit|Add1~17\) # (\timer_circuit|Add1~27\ & \timer_circuit|Add1~17COUT1_167\))))
-- \timer_circuit|Add1~2\ = CARRY(((!\timer_circuit|Add1~17\) # (!\timer_circuit|timer2\(27))))
-- \timer_circuit|Add1~2COUT1_168\ = CARRY(((!\timer_circuit|Add1~17COUT1_167\) # (!\timer_circuit|timer2\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer2\(27),
	cin => \timer_circuit|Add1~27\,
	cin0 => \timer_circuit|Add1~17\,
	cin1 => \timer_circuit|Add1~17COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~0_combout\,
	cout0 => \timer_circuit|Add1~2\,
	cout1 => \timer_circuit|Add1~2COUT1_168\);

-- Location: LC_X11_Y7_N9
\timer_circuit|Add1~10\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add1~10_combout\ = (((!\timer_circuit|Add1~27\ & \timer_circuit|Add1~2\) # (\timer_circuit|Add1~27\ & \timer_circuit|Add1~2COUT1_168\) $ (!\timer_circuit|timer2\(28))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \timer_circuit|timer2\(28),
	cin => \timer_circuit|Add1~27\,
	cin0 => \timer_circuit|Add1~2\,
	cin1 => \timer_circuit|Add1~2COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add1~10_combout\);

-- Location: LC_X11_Y6_N8
\timer_circuit|timer2[28]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer2\(28) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add1~10_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer2\(28));

-- Location: LC_X11_Y6_N3
\timer_circuit|timer2[27]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~0\ = (\timer_circuit|timer2\(25) & (!\timer_circuit|timer2\(26) & (B1_timer2[27] & !\timer_circuit|timer2\(28))))
-- \timer_circuit|timer2\(27) = DFFEAS(\timer_circuit|Equal1~0\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux2~0_combout\, \timer_circuit|Add1~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer2\(25),
	datab => \timer_circuit|timer2\(26),
	datac => \timer_circuit|Add1~0_combout\,
	datad => \timer_circuit|timer2\(28),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~0\,
	regout => \timer_circuit|timer2\(27));

-- Location: LC_X10_Y6_N9
\timer_circuit|Equal1~4\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~4_combout\ = (\timer_circuit|Equal1~2\ & (\timer_circuit|Equal1~3\ & (\timer_circuit|Equal1~0\ & \timer_circuit|Equal1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|Equal1~2\,
	datab => \timer_circuit|Equal1~3\,
	datac => \timer_circuit|Equal1~0\,
	datad => \timer_circuit|Equal1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~4_combout\);

-- Location: LC_X8_Y6_N9
\timer_circuit|Equal1~8\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal1~8_combout\ = (\timer_circuit|Equal1~5\ & (\timer_circuit|timer2\(0) & (\timer_circuit|Equal1~7\ & \timer_circuit|Equal1~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|Equal1~5\,
	datab => \timer_circuit|timer2\(0),
	datac => \timer_circuit|Equal1~7\,
	datad => \timer_circuit|Equal1~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal1~8_combout\);

-- Location: LC_X8_Y6_N0
\timer_circuit|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Mux2~0_combout\ = (\FSM_output[1]~4_combout\ & (!\FSM_output[0]~3_combout\ & ((!\timer_circuit|Equal1~8_combout\) # (!\timer_circuit|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_output[1]~4_combout\,
	datab => \FSM_output[0]~3_combout\,
	datac => \timer_circuit|Equal1~4_combout\,
	datad => \timer_circuit|Equal1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Mux2~0_combout\);

-- Location: LC_X7_Y6_N2
\timer_circuit|LED[1]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|LED\(1) = DFFEAS((((\timer_circuit|Mux2~0_combout\ & \clock_1~combout\))), GLOBAL(\clock_50~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Mux2~0_combout\,
	datad => \clock_1~combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|LED\(1));

-- Location: LC_X2_Y6_N9
\timer_circuit|timer3[0]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(0) = DFFEAS(((\timer_circuit|Mux1~0_combout\ $ (\timer_circuit|timer3\(0)))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Mux1~0_combout\,
	datad => \timer_circuit|timer3\(0),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(0));

-- Location: LC_X3_Y6_N1
\timer_circuit|Add2~142\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~142_cout0\ = CARRY((!\timer_circuit|timer3\(0)))
-- \timer_circuit|Add2~142COUT1_146\ = CARRY((!\timer_circuit|timer3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~140\,
	cout0 => \timer_circuit|Add2~142_cout0\,
	cout1 => \timer_circuit|Add2~142COUT1_146\);

-- Location: LC_X3_Y6_N2
\timer_circuit|Add2~135\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~135_combout\ = (\timer_circuit|timer3\(1) $ ((\timer_circuit|Add2~142_cout0\)))
-- \timer_circuit|Add2~137\ = CARRY(((!\timer_circuit|Add2~142_cout0\) # (!\timer_circuit|timer3\(1))))
-- \timer_circuit|Add2~137COUT1_147\ = CARRY(((!\timer_circuit|Add2~142COUT1_146\) # (!\timer_circuit|timer3\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(1),
	cin0 => \timer_circuit|Add2~142_cout0\,
	cin1 => \timer_circuit|Add2~142COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~135_combout\,
	cout0 => \timer_circuit|Add2~137\,
	cout1 => \timer_circuit|Add2~137COUT1_147\);

-- Location: LC_X3_Y6_N0
\timer_circuit|timer3[1]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(1) = DFFEAS((((\timer_circuit|Add2~135_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add2~135_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(1));

-- Location: LC_X3_Y6_N3
\timer_circuit|Add2~130\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~130_combout\ = \timer_circuit|timer3\(2) $ ((((!\timer_circuit|Add2~137\))))
-- \timer_circuit|Add2~132\ = CARRY((\timer_circuit|timer3\(2) & ((!\timer_circuit|Add2~137\))))
-- \timer_circuit|Add2~132COUT1_148\ = CARRY((\timer_circuit|timer3\(2) & ((!\timer_circuit|Add2~137COUT1_147\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(2),
	cin0 => \timer_circuit|Add2~137\,
	cin1 => \timer_circuit|Add2~137COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~130_combout\,
	cout0 => \timer_circuit|Add2~132\,
	cout1 => \timer_circuit|Add2~132COUT1_148\);

-- Location: LC_X3_Y7_N2
\timer_circuit|timer3[2]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(2) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~130_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(2));

-- Location: LC_X3_Y6_N4
\timer_circuit|Add2~125\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~125_combout\ = (\timer_circuit|timer3\(3) $ ((\timer_circuit|Add2~132\)))
-- \timer_circuit|Add2~127\ = CARRY(((!\timer_circuit|Add2~132COUT1_148\) # (!\timer_circuit|timer3\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(3),
	cin0 => \timer_circuit|Add2~132\,
	cin1 => \timer_circuit|Add2~132COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~125_combout\,
	cout => \timer_circuit|Add2~127\);

-- Location: LC_X3_Y7_N6
\timer_circuit|timer3[3]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(3) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~125_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(3));

-- Location: LC_X3_Y6_N5
\timer_circuit|Add2~120\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~120_combout\ = (\timer_circuit|timer3\(4) $ ((!\timer_circuit|Add2~127\)))
-- \timer_circuit|Add2~122\ = CARRY(((\timer_circuit|timer3\(4) & !\timer_circuit|Add2~127\)))
-- \timer_circuit|Add2~122COUT1_149\ = CARRY(((\timer_circuit|timer3\(4) & !\timer_circuit|Add2~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(4),
	cin => \timer_circuit|Add2~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~120_combout\,
	cout0 => \timer_circuit|Add2~122\,
	cout1 => \timer_circuit|Add2~122COUT1_149\);

-- Location: LC_X3_Y7_N3
\timer_circuit|timer3[4]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~7\ = (!\timer_circuit|timer3\(3) & (!\timer_circuit|timer3\(1) & (!B1_timer3[4] & !\timer_circuit|timer3\(2))))
-- \timer_circuit|timer3\(4) = DFFEAS(\timer_circuit|Equal2~7\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer3\(3),
	datab => \timer_circuit|timer3\(1),
	datac => \timer_circuit|Add2~120_combout\,
	datad => \timer_circuit|timer3\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~7\,
	regout => \timer_circuit|timer3\(4));

-- Location: LC_X3_Y6_N6
\timer_circuit|Add2~115\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~115_combout\ = (\timer_circuit|timer3\(5) $ (((!\timer_circuit|Add2~127\ & \timer_circuit|Add2~122\) # (\timer_circuit|Add2~127\ & \timer_circuit|Add2~122COUT1_149\))))
-- \timer_circuit|Add2~117\ = CARRY(((!\timer_circuit|Add2~122\) # (!\timer_circuit|timer3\(5))))
-- \timer_circuit|Add2~117COUT1_150\ = CARRY(((!\timer_circuit|Add2~122COUT1_149\) # (!\timer_circuit|timer3\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(5),
	cin => \timer_circuit|Add2~127\,
	cin0 => \timer_circuit|Add2~122\,
	cin1 => \timer_circuit|Add2~122COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~115_combout\,
	cout0 => \timer_circuit|Add2~117\,
	cout1 => \timer_circuit|Add2~117COUT1_150\);

-- Location: LC_X2_Y6_N6
\timer_circuit|timer3[5]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(5) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~115_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(5));

-- Location: LC_X3_Y6_N7
\timer_circuit|Add2~110\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~110_combout\ = (\timer_circuit|timer3\(6) $ ((!(!\timer_circuit|Add2~127\ & \timer_circuit|Add2~117\) # (\timer_circuit|Add2~127\ & \timer_circuit|Add2~117COUT1_150\))))
-- \timer_circuit|Add2~112\ = CARRY(((\timer_circuit|timer3\(6) & !\timer_circuit|Add2~117\)))
-- \timer_circuit|Add2~112COUT1_151\ = CARRY(((\timer_circuit|timer3\(6) & !\timer_circuit|Add2~117COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(6),
	cin => \timer_circuit|Add2~127\,
	cin0 => \timer_circuit|Add2~117\,
	cin1 => \timer_circuit|Add2~117COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~110_combout\,
	cout0 => \timer_circuit|Add2~112\,
	cout1 => \timer_circuit|Add2~112COUT1_151\);

-- Location: LC_X2_Y6_N0
\timer_circuit|timer3[6]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(6) = DFFEAS((((\timer_circuit|Add2~110_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add2~110_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(6));

-- Location: LC_X3_Y6_N8
\timer_circuit|Add2~105\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~105_combout\ = (\timer_circuit|timer3\(7) $ (((!\timer_circuit|Add2~127\ & \timer_circuit|Add2~112\) # (\timer_circuit|Add2~127\ & \timer_circuit|Add2~112COUT1_151\))))
-- \timer_circuit|Add2~107\ = CARRY(((!\timer_circuit|Add2~112\) # (!\timer_circuit|timer3\(7))))
-- \timer_circuit|Add2~107COUT1_152\ = CARRY(((!\timer_circuit|Add2~112COUT1_151\) # (!\timer_circuit|timer3\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(7),
	cin => \timer_circuit|Add2~127\,
	cin0 => \timer_circuit|Add2~112\,
	cin1 => \timer_circuit|Add2~112COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~105_combout\,
	cout0 => \timer_circuit|Add2~107\,
	cout1 => \timer_circuit|Add2~107COUT1_152\);

-- Location: LC_X2_Y6_N4
\timer_circuit|timer3[7]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(7) = DFFEAS((((\timer_circuit|Add2~105_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add2~105_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(7));

-- Location: LC_X3_Y6_N9
\timer_circuit|Add2~100\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~100_combout\ = (\timer_circuit|timer3\(8) $ ((!(!\timer_circuit|Add2~127\ & \timer_circuit|Add2~107\) # (\timer_circuit|Add2~127\ & \timer_circuit|Add2~107COUT1_152\))))
-- \timer_circuit|Add2~102\ = CARRY(((\timer_circuit|timer3\(8) & !\timer_circuit|Add2~107COUT1_152\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(8),
	cin => \timer_circuit|Add2~127\,
	cin0 => \timer_circuit|Add2~107\,
	cin1 => \timer_circuit|Add2~107COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~100_combout\,
	cout => \timer_circuit|Add2~102\);

-- Location: LC_X3_Y7_N7
\timer_circuit|timer3[8]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~6\ = (!\timer_circuit|timer3\(5) & (!\timer_circuit|timer3\(6) & (B1_timer3[8] & !\timer_circuit|timer3\(7))))
-- \timer_circuit|timer3\(8) = DFFEAS(\timer_circuit|Equal2~6\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer3\(5),
	datab => \timer_circuit|timer3\(6),
	datac => \timer_circuit|Add2~100_combout\,
	datad => \timer_circuit|timer3\(7),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~6\,
	regout => \timer_circuit|timer3\(8));

-- Location: LC_X4_Y6_N0
\timer_circuit|Add2~80\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~80_combout\ = (\timer_circuit|timer3\(9) $ ((\timer_circuit|Add2~102\)))
-- \timer_circuit|Add2~82\ = CARRY(((!\timer_circuit|Add2~102\) # (!\timer_circuit|timer3\(9))))
-- \timer_circuit|Add2~82COUT1_153\ = CARRY(((!\timer_circuit|Add2~102\) # (!\timer_circuit|timer3\(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(9),
	cin => \timer_circuit|Add2~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~80_combout\,
	cout0 => \timer_circuit|Add2~82\,
	cout1 => \timer_circuit|Add2~82COUT1_153\);

-- Location: LC_X3_Y7_N4
\timer_circuit|timer3[9]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~5\ = (!\timer_circuit|timer3\(11) & (!\timer_circuit|timer3\(10) & (B1_timer3[9] & !\timer_circuit|timer3\(12))))
-- \timer_circuit|timer3\(9) = DFFEAS(\timer_circuit|Equal2~5\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer3\(11),
	datab => \timer_circuit|timer3\(10),
	datac => \timer_circuit|Add2~80_combout\,
	datad => \timer_circuit|timer3\(12),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~5\,
	regout => \timer_circuit|timer3\(9));

-- Location: LC_X4_Y6_N1
\timer_circuit|Add2~95\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~95_combout\ = (\timer_circuit|timer3\(10) $ ((!(!\timer_circuit|Add2~102\ & \timer_circuit|Add2~82\) # (\timer_circuit|Add2~102\ & \timer_circuit|Add2~82COUT1_153\))))
-- \timer_circuit|Add2~97\ = CARRY(((\timer_circuit|timer3\(10) & !\timer_circuit|Add2~82\)))
-- \timer_circuit|Add2~97COUT1_154\ = CARRY(((\timer_circuit|timer3\(10) & !\timer_circuit|Add2~82COUT1_153\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(10),
	cin => \timer_circuit|Add2~102\,
	cin0 => \timer_circuit|Add2~82\,
	cin1 => \timer_circuit|Add2~82COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~95_combout\,
	cout0 => \timer_circuit|Add2~97\,
	cout1 => \timer_circuit|Add2~97COUT1_154\);

-- Location: LC_X3_Y7_N0
\timer_circuit|timer3[10]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(10) = DFFEAS((((\timer_circuit|Add2~95_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add2~95_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(10));

-- Location: LC_X4_Y6_N2
\timer_circuit|Add2~90\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~90_combout\ = (\timer_circuit|timer3\(11) $ (((!\timer_circuit|Add2~102\ & \timer_circuit|Add2~97\) # (\timer_circuit|Add2~102\ & \timer_circuit|Add2~97COUT1_154\))))
-- \timer_circuit|Add2~92\ = CARRY(((!\timer_circuit|Add2~97\) # (!\timer_circuit|timer3\(11))))
-- \timer_circuit|Add2~92COUT1_155\ = CARRY(((!\timer_circuit|Add2~97COUT1_154\) # (!\timer_circuit|timer3\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(11),
	cin => \timer_circuit|Add2~102\,
	cin0 => \timer_circuit|Add2~97\,
	cin1 => \timer_circuit|Add2~97COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~90_combout\,
	cout0 => \timer_circuit|Add2~92\,
	cout1 => \timer_circuit|Add2~92COUT1_155\);

-- Location: LC_X3_Y7_N5
\timer_circuit|timer3[11]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(11) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~90_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(11));

-- Location: LC_X4_Y6_N3
\timer_circuit|Add2~85\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~85_combout\ = (\timer_circuit|timer3\(12) $ ((!(!\timer_circuit|Add2~102\ & \timer_circuit|Add2~92\) # (\timer_circuit|Add2~102\ & \timer_circuit|Add2~92COUT1_155\))))
-- \timer_circuit|Add2~87\ = CARRY(((\timer_circuit|timer3\(12) & !\timer_circuit|Add2~92\)))
-- \timer_circuit|Add2~87COUT1_156\ = CARRY(((\timer_circuit|timer3\(12) & !\timer_circuit|Add2~92COUT1_155\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(12),
	cin => \timer_circuit|Add2~102\,
	cin0 => \timer_circuit|Add2~92\,
	cin1 => \timer_circuit|Add2~92COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~85_combout\,
	cout0 => \timer_circuit|Add2~87\,
	cout1 => \timer_circuit|Add2~87COUT1_156\);

-- Location: LC_X3_Y7_N9
\timer_circuit|timer3[12]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(12) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~85_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(12));

-- Location: LC_X4_Y6_N4
\timer_circuit|Add2~70\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~70_combout\ = \timer_circuit|timer3\(13) $ (((((!\timer_circuit|Add2~102\ & \timer_circuit|Add2~87\) # (\timer_circuit|Add2~102\ & \timer_circuit|Add2~87COUT1_156\)))))
-- \timer_circuit|Add2~72\ = CARRY(((!\timer_circuit|Add2~87COUT1_156\)) # (!\timer_circuit|timer3\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(13),
	cin => \timer_circuit|Add2~102\,
	cin0 => \timer_circuit|Add2~87\,
	cin1 => \timer_circuit|Add2~87COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~70_combout\,
	cout => \timer_circuit|Add2~72\);

-- Location: LC_X5_Y7_N1
\timer_circuit|timer3[13]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(13) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~70_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(13));

-- Location: LC_X4_Y6_N5
\timer_circuit|Add2~75\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~75_combout\ = \timer_circuit|timer3\(14) $ ((((!\timer_circuit|Add2~72\))))
-- \timer_circuit|Add2~77\ = CARRY((\timer_circuit|timer3\(14) & ((!\timer_circuit|Add2~72\))))
-- \timer_circuit|Add2~77COUT1_157\ = CARRY((\timer_circuit|timer3\(14) & ((!\timer_circuit|Add2~72\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(14),
	cin => \timer_circuit|Add2~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~75_combout\,
	cout0 => \timer_circuit|Add2~77\,
	cout1 => \timer_circuit|Add2~77COUT1_157\);

-- Location: LC_X5_Y7_N7
\timer_circuit|timer3[14]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(14) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~75_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(14));

-- Location: LC_X4_Y6_N6
\timer_circuit|Add2~65\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~65_combout\ = (\timer_circuit|timer3\(15) $ (((!\timer_circuit|Add2~72\ & \timer_circuit|Add2~77\) # (\timer_circuit|Add2~72\ & \timer_circuit|Add2~77COUT1_157\))))
-- \timer_circuit|Add2~67\ = CARRY(((!\timer_circuit|Add2~77\) # (!\timer_circuit|timer3\(15))))
-- \timer_circuit|Add2~67COUT1_158\ = CARRY(((!\timer_circuit|Add2~77COUT1_157\) # (!\timer_circuit|timer3\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(15),
	cin => \timer_circuit|Add2~72\,
	cin0 => \timer_circuit|Add2~77\,
	cin1 => \timer_circuit|Add2~77COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~65_combout\,
	cout0 => \timer_circuit|Add2~67\,
	cout1 => \timer_circuit|Add2~67COUT1_158\);

-- Location: LC_X5_Y7_N9
\timer_circuit|timer3[15]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(15) = DFFEAS((((\timer_circuit|Add2~65_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add2~65_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(15));

-- Location: LC_X4_Y6_N7
\timer_circuit|Add2~60\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~60_combout\ = (\timer_circuit|timer3\(16) $ ((!(!\timer_circuit|Add2~72\ & \timer_circuit|Add2~67\) # (\timer_circuit|Add2~72\ & \timer_circuit|Add2~67COUT1_158\))))
-- \timer_circuit|Add2~62\ = CARRY(((\timer_circuit|timer3\(16) & !\timer_circuit|Add2~67\)))
-- \timer_circuit|Add2~62COUT1_159\ = CARRY(((\timer_circuit|timer3\(16) & !\timer_circuit|Add2~67COUT1_158\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(16),
	cin => \timer_circuit|Add2~72\,
	cin0 => \timer_circuit|Add2~67\,
	cin1 => \timer_circuit|Add2~67COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~60_combout\,
	cout0 => \timer_circuit|Add2~62\,
	cout1 => \timer_circuit|Add2~62COUT1_159\);

-- Location: LC_X4_Y7_N6
\timer_circuit|timer3[16]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~3\ = (\timer_circuit|timer3\(13) & (\timer_circuit|timer3\(15) & (B1_timer3[16] & !\timer_circuit|timer3\(14))))
-- \timer_circuit|timer3\(16) = DFFEAS(\timer_circuit|Equal2~3\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer3\(13),
	datab => \timer_circuit|timer3\(15),
	datac => \timer_circuit|Add2~60_combout\,
	datad => \timer_circuit|timer3\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~3\,
	regout => \timer_circuit|timer3\(16));

-- Location: LC_X4_Y6_N8
\timer_circuit|Add2~55\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~55_combout\ = \timer_circuit|timer3\(17) $ (((((!\timer_circuit|Add2~72\ & \timer_circuit|Add2~62\) # (\timer_circuit|Add2~72\ & \timer_circuit|Add2~62COUT1_159\)))))
-- \timer_circuit|Add2~57\ = CARRY(((!\timer_circuit|Add2~62\)) # (!\timer_circuit|timer3\(17)))
-- \timer_circuit|Add2~57COUT1_160\ = CARRY(((!\timer_circuit|Add2~62COUT1_159\)) # (!\timer_circuit|timer3\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(17),
	cin => \timer_circuit|Add2~72\,
	cin0 => \timer_circuit|Add2~62\,
	cin1 => \timer_circuit|Add2~62COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~55_combout\,
	cout0 => \timer_circuit|Add2~57\,
	cout1 => \timer_circuit|Add2~57COUT1_160\);

-- Location: LC_X4_Y7_N2
\timer_circuit|timer3[17]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(17) = DFFEAS((((\timer_circuit|Add2~55_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add2~55_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(17));

-- Location: LC_X4_Y6_N9
\timer_circuit|Add2~50\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~50_combout\ = \timer_circuit|timer3\(18) $ ((((!(!\timer_circuit|Add2~72\ & \timer_circuit|Add2~57\) # (\timer_circuit|Add2~72\ & \timer_circuit|Add2~57COUT1_160\)))))
-- \timer_circuit|Add2~52\ = CARRY((\timer_circuit|timer3\(18) & ((!\timer_circuit|Add2~57COUT1_160\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(18),
	cin => \timer_circuit|Add2~72\,
	cin0 => \timer_circuit|Add2~57\,
	cin1 => \timer_circuit|Add2~57COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~50_combout\,
	cout => \timer_circuit|Add2~52\);

-- Location: LC_X4_Y7_N0
\timer_circuit|timer3[18]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(18) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~50_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(18));

-- Location: LC_X5_Y6_N0
\timer_circuit|Add2~45\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~45_combout\ = (\timer_circuit|timer3\(19) $ ((\timer_circuit|Add2~52\)))
-- \timer_circuit|Add2~47\ = CARRY(((!\timer_circuit|Add2~52\) # (!\timer_circuit|timer3\(19))))
-- \timer_circuit|Add2~47COUT1_161\ = CARRY(((!\timer_circuit|Add2~52\) # (!\timer_circuit|timer3\(19))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(19),
	cin => \timer_circuit|Add2~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~45_combout\,
	cout0 => \timer_circuit|Add2~47\,
	cout1 => \timer_circuit|Add2~47COUT1_161\);

-- Location: LC_X4_Y7_N8
\timer_circuit|timer3[19]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(19) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~45_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(19));

-- Location: LC_X4_Y7_N5
\timer_circuit|timer3[20]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~2\ = (!\timer_circuit|timer3\(19) & (!\timer_circuit|timer3\(17) & (!B1_timer3[20] & !\timer_circuit|timer3\(18))))
-- \timer_circuit|timer3\(20) = DFFEAS(\timer_circuit|Equal2~2\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer3\(19),
	datab => \timer_circuit|timer3\(17),
	datac => \timer_circuit|Add2~40_combout\,
	datad => \timer_circuit|timer3\(18),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~2\,
	regout => \timer_circuit|timer3\(20));

-- Location: LC_X5_Y6_N1
\timer_circuit|Add2~40\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~40_combout\ = \timer_circuit|timer3\(20) $ ((((!(!\timer_circuit|Add2~52\ & \timer_circuit|Add2~47\) # (\timer_circuit|Add2~52\ & \timer_circuit|Add2~47COUT1_161\)))))
-- \timer_circuit|Add2~42\ = CARRY((\timer_circuit|timer3\(20) & ((!\timer_circuit|Add2~47\))))
-- \timer_circuit|Add2~42COUT1_162\ = CARRY((\timer_circuit|timer3\(20) & ((!\timer_circuit|Add2~47COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(20),
	cin => \timer_circuit|Add2~52\,
	cin0 => \timer_circuit|Add2~47\,
	cin1 => \timer_circuit|Add2~47COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~40_combout\,
	cout0 => \timer_circuit|Add2~42\,
	cout1 => \timer_circuit|Add2~42COUT1_162\);

-- Location: LC_X5_Y6_N2
\timer_circuit|Add2~35\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~35_combout\ = \timer_circuit|timer3\(21) $ (((((!\timer_circuit|Add2~52\ & \timer_circuit|Add2~42\) # (\timer_circuit|Add2~52\ & \timer_circuit|Add2~42COUT1_162\)))))
-- \timer_circuit|Add2~37\ = CARRY(((!\timer_circuit|Add2~42\)) # (!\timer_circuit|timer3\(21)))
-- \timer_circuit|Add2~37COUT1_163\ = CARRY(((!\timer_circuit|Add2~42COUT1_162\)) # (!\timer_circuit|timer3\(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(21),
	cin => \timer_circuit|Add2~52\,
	cin0 => \timer_circuit|Add2~42\,
	cin1 => \timer_circuit|Add2~42COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~35_combout\,
	cout0 => \timer_circuit|Add2~37\,
	cout1 => \timer_circuit|Add2~37COUT1_163\);

-- Location: LC_X4_Y7_N3
\timer_circuit|timer3[21]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(21) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~35_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(21));

-- Location: LC_X5_Y6_N3
\timer_circuit|Add2~30\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~30_combout\ = \timer_circuit|timer3\(22) $ ((((!(!\timer_circuit|Add2~52\ & \timer_circuit|Add2~37\) # (\timer_circuit|Add2~52\ & \timer_circuit|Add2~37COUT1_163\)))))
-- \timer_circuit|Add2~32\ = CARRY((\timer_circuit|timer3\(22) & ((!\timer_circuit|Add2~37\))))
-- \timer_circuit|Add2~32COUT1_164\ = CARRY((\timer_circuit|timer3\(22) & ((!\timer_circuit|Add2~37COUT1_163\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(22),
	cin => \timer_circuit|Add2~52\,
	cin0 => \timer_circuit|Add2~37\,
	cin1 => \timer_circuit|Add2~37COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~30_combout\,
	cout0 => \timer_circuit|Add2~32\,
	cout1 => \timer_circuit|Add2~32COUT1_164\);

-- Location: LC_X4_Y7_N1
\timer_circuit|timer3[22]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(22) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~30_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(22));

-- Location: LC_X5_Y6_N4
\timer_circuit|Add2~25\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~25_combout\ = (\timer_circuit|timer3\(23) $ (((!\timer_circuit|Add2~52\ & \timer_circuit|Add2~32\) # (\timer_circuit|Add2~52\ & \timer_circuit|Add2~32COUT1_164\))))
-- \timer_circuit|Add2~27\ = CARRY(((!\timer_circuit|Add2~32COUT1_164\) # (!\timer_circuit|timer3\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(23),
	cin => \timer_circuit|Add2~52\,
	cin0 => \timer_circuit|Add2~32\,
	cin1 => \timer_circuit|Add2~32COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~25_combout\,
	cout => \timer_circuit|Add2~27\);

-- Location: LC_X4_Y7_N9
\timer_circuit|timer3[23]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(23) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~25_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(23));

-- Location: LC_X5_Y6_N5
\timer_circuit|Add2~20\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~20_combout\ = (\timer_circuit|timer3\(24) $ ((!\timer_circuit|Add2~27\)))
-- \timer_circuit|Add2~22\ = CARRY(((\timer_circuit|timer3\(24) & !\timer_circuit|Add2~27\)))
-- \timer_circuit|Add2~22COUT1_165\ = CARRY(((\timer_circuit|timer3\(24) & !\timer_circuit|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(24),
	cin => \timer_circuit|Add2~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~20_combout\,
	cout0 => \timer_circuit|Add2~22\,
	cout1 => \timer_circuit|Add2~22COUT1_165\);

-- Location: LC_X4_Y7_N4
\timer_circuit|timer3[24]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~1\ = (\timer_circuit|timer3\(21) & (\timer_circuit|timer3\(23) & (B1_timer3[24] & \timer_circuit|timer3\(22))))
-- \timer_circuit|timer3\(24) = DFFEAS(\timer_circuit|Equal2~1\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer3\(21),
	datab => \timer_circuit|timer3\(23),
	datac => \timer_circuit|Add2~20_combout\,
	datad => \timer_circuit|timer3\(22),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~1\,
	regout => \timer_circuit|timer3\(24));

-- Location: LC_X5_Y6_N6
\timer_circuit|Add2~15\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~15_combout\ = (\timer_circuit|timer3\(25) $ (((!\timer_circuit|Add2~27\ & \timer_circuit|Add2~22\) # (\timer_circuit|Add2~27\ & \timer_circuit|Add2~22COUT1_165\))))
-- \timer_circuit|Add2~17\ = CARRY(((!\timer_circuit|Add2~22\) # (!\timer_circuit|timer3\(25))))
-- \timer_circuit|Add2~17COUT1_166\ = CARRY(((!\timer_circuit|Add2~22COUT1_165\) # (!\timer_circuit|timer3\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(25),
	cin => \timer_circuit|Add2~27\,
	cin0 => \timer_circuit|Add2~22\,
	cin1 => \timer_circuit|Add2~22COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~15_combout\,
	cout0 => \timer_circuit|Add2~17\,
	cout1 => \timer_circuit|Add2~17COUT1_166\);

-- Location: LC_X5_Y7_N5
\timer_circuit|timer3[25]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(25) = DFFEAS(GND, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \timer_circuit|Add2~15_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(25));

-- Location: LC_X5_Y6_N7
\timer_circuit|Add2~10\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~10_combout\ = (\timer_circuit|timer3\(26) $ ((!(!\timer_circuit|Add2~27\ & \timer_circuit|Add2~17\) # (\timer_circuit|Add2~27\ & \timer_circuit|Add2~17COUT1_166\))))
-- \timer_circuit|Add2~12\ = CARRY(((\timer_circuit|timer3\(26) & !\timer_circuit|Add2~17\)))
-- \timer_circuit|Add2~12COUT1_167\ = CARRY(((\timer_circuit|timer3\(26) & !\timer_circuit|Add2~17COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer_circuit|timer3\(26),
	cin => \timer_circuit|Add2~27\,
	cin0 => \timer_circuit|Add2~17\,
	cin1 => \timer_circuit|Add2~17COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~10_combout\,
	cout0 => \timer_circuit|Add2~12\,
	cout1 => \timer_circuit|Add2~12COUT1_167\);

-- Location: LC_X5_Y7_N8
\timer_circuit|timer3[26]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(26) = DFFEAS((((\timer_circuit|Add2~10_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add2~10_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(26));

-- Location: LC_X5_Y6_N8
\timer_circuit|Add2~5\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~5_combout\ = \timer_circuit|timer3\(27) $ (((((!\timer_circuit|Add2~27\ & \timer_circuit|Add2~12\) # (\timer_circuit|Add2~27\ & \timer_circuit|Add2~12COUT1_167\)))))
-- \timer_circuit|Add2~7\ = CARRY(((!\timer_circuit|Add2~12\)) # (!\timer_circuit|timer3\(27)))
-- \timer_circuit|Add2~7COUT1_168\ = CARRY(((!\timer_circuit|Add2~12COUT1_167\)) # (!\timer_circuit|timer3\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|timer3\(27),
	cin => \timer_circuit|Add2~27\,
	cin0 => \timer_circuit|Add2~12\,
	cin1 => \timer_circuit|Add2~12COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~5_combout\,
	cout0 => \timer_circuit|Add2~7\,
	cout1 => \timer_circuit|Add2~7COUT1_168\);

-- Location: LC_X5_Y7_N2
\timer_circuit|timer3[27]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|timer3\(27) = DFFEAS((((\timer_circuit|Add2~5_combout\))), GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \timer_circuit|Add2~5_combout\,
	aclr => \reset~combout\,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|timer3\(27));

-- Location: LC_X5_Y7_N4
\timer_circuit|timer3[28]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~0\ = (!\timer_circuit|timer3\(25) & (!\timer_circuit|timer3\(27) & (B1_timer3[28] & !\timer_circuit|timer3\(26))))
-- \timer_circuit|timer3\(28) = DFFEAS(\timer_circuit|Equal2~0\, GLOBAL(\clock_50~combout\), !GLOBAL(\reset~combout\), , \timer_circuit|Mux1~0_combout\, \timer_circuit|Add2~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \timer_circuit|timer3\(25),
	datab => \timer_circuit|timer3\(27),
	datac => \timer_circuit|Add2~0_combout\,
	datad => \timer_circuit|timer3\(26),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \timer_circuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~0\,
	regout => \timer_circuit|timer3\(28));

-- Location: LC_X5_Y6_N9
\timer_circuit|Add2~0\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Add2~0_combout\ = (((!\timer_circuit|Add2~27\ & \timer_circuit|Add2~7\) # (\timer_circuit|Add2~27\ & \timer_circuit|Add2~7COUT1_168\) $ (!\timer_circuit|timer3\(28))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \timer_circuit|timer3\(28),
	cin => \timer_circuit|Add2~27\,
	cin0 => \timer_circuit|Add2~7\,
	cin1 => \timer_circuit|Add2~7COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Add2~0_combout\);

-- Location: LC_X4_Y7_N7
\timer_circuit|Equal2~4\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~4_combout\ = (\timer_circuit|Equal2~2\ & (\timer_circuit|Equal2~0\ & (\timer_circuit|Equal2~1\ & \timer_circuit|Equal2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|Equal2~2\,
	datab => \timer_circuit|Equal2~0\,
	datac => \timer_circuit|Equal2~1\,
	datad => \timer_circuit|Equal2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~4_combout\);

-- Location: LC_X3_Y7_N8
\timer_circuit|Equal2~8\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Equal2~8_combout\ = (\timer_circuit|Equal2~5\ & (\timer_circuit|timer3\(0) & (\timer_circuit|Equal2~6\ & \timer_circuit|Equal2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|Equal2~5\,
	datab => \timer_circuit|timer3\(0),
	datac => \timer_circuit|Equal2~6\,
	datad => \timer_circuit|Equal2~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Equal2~8_combout\);

-- Location: LC_X3_Y7_N1
\timer_circuit|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|Mux1~0_combout\ = (\FSM_output[0]~3_combout\ & (\FSM_output[1]~4_combout\ & ((!\timer_circuit|Equal2~8_combout\) # (!\timer_circuit|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer_circuit|Equal2~4_combout\,
	datab => \FSM_output[0]~3_combout\,
	datac => \FSM_output[1]~4_combout\,
	datad => \timer_circuit|Equal2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer_circuit|Mux1~0_combout\);

-- Location: LC_X5_Y7_N6
\timer_circuit|LED[2]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|LED\(2) = DFFEAS(((\clock_1~combout\ & ((\timer_circuit|Mux1~0_combout\)))), GLOBAL(\clock_50~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \clock_1~combout\,
	datad => \timer_circuit|Mux1~0_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|LED\(2));

-- Location: LC_X7_Y6_N4
\timer_circuit|LED[3]\ : maxv_lcell
-- Equation(s):
-- \timer_circuit|LED\(3) = DFFEAS((((!\FSM_output[0]~3_combout\ & !\FSM_output[1]~4_combout\))), GLOBAL(\clock_50~combout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \FSM_output[0]~3_combout\,
	datad => \FSM_output[1]~4_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer_circuit|LED\(3));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timer_circuit|LED\(0),
	oe => VCC,
	padio => ww_out_LED(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timer_circuit|LED\(1),
	oe => VCC,
	padio => ww_out_LED(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timer_circuit|LED\(2),
	oe => VCC,
	padio => ww_out_LED(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timer_circuit|LED\(3),
	oe => VCC,
	padio => ww_out_LED(3));
END structure;


