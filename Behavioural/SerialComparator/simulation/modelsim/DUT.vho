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

-- DATE "10/06/2021 18:43:17"

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

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(3 DOWNTO 0);
	output_vector : OUT std_logic_vector(1 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|present_state.GREATER_THAN~regout\ : std_logic;
SIGNAL \add_instance|present_state.LESS_THAN~regout\ : std_logic;
SIGNAL \add_instance|L~0_combout\ : std_logic;
SIGNAL \add_instance|G~0\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \add_instance|ALT_INV_L~0_combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|ALT_INV_L~0_combout\ <= NOT \add_instance|L~0_combout\;

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X1_Y9_N3
\add_instance|present_state.LESS_THAN\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.LESS_THAN~regout\ = DFFEAS((((!\add_instance|L~0_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datad => \add_instance|L~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|present_state.LESS_THAN~regout\);

-- Location: LC_X1_Y9_N2
\add_instance|L~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|L~0_combout\ = (\input_vector~combout\(3)) # ((\input_vector~combout\(2) & ((!\add_instance|present_state.LESS_THAN~regout\) # (!\input_vector~combout\(1)))) # (!\input_vector~combout\(2) & (!\input_vector~combout\(1) & 
-- !\add_instance|present_state.LESS_THAN~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ceef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(1),
	datad => \add_instance|present_state.LESS_THAN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|L~0_combout\);

-- Location: LC_X1_Y9_N4
\add_instance|present_state.GREATER_THAN\ : maxv_lcell
-- Equation(s):
-- \add_instance|G~0\ = (!\input_vector~combout\(3) & ((\input_vector~combout\(2) & ((B1_present_state.GREATER_THAN) # (!\input_vector~combout\(1)))) # (!\input_vector~combout\(2) & (!\input_vector~combout\(1) & B1_present_state.GREATER_THAN))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(1),
	datad => \input_vector~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|G~0\,
	regout => \add_instance|present_state.GREATER_THAN~regout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALT_INV_L~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|G~0\,
	oe => VCC,
	padio => ww_output_vector(1));
END structure;


