-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "09/06/2017 14:36:21"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	accumulator IS
    PORT (
	CLK : IN std_logic;
	load : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0)
	);
END accumulator;

-- Design Ports Information
-- output[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF accumulator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \tmp[0]~8_combout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \tmp[0]~9\ : std_logic;
SIGNAL \tmp[1]~10_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \tmp[1]~11\ : std_logic;
SIGNAL \tmp[2]~12_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \tmp[2]~13\ : std_logic;
SIGNAL \tmp[3]~14_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \tmp[3]~15\ : std_logic;
SIGNAL \tmp[4]~16_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \tmp[4]~17\ : std_logic;
SIGNAL \tmp[5]~18_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \tmp[5]~19\ : std_logic;
SIGNAL \tmp[6]~20_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \tmp[6]~21\ : std_logic;
SIGNAL \tmp[7]~22_combout\ : std_logic;
SIGNAL tmp : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_load <= load;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N16
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X16_Y1_N10
\tmp[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[0]~8_combout\ = (tmp(0) & (\input[0]~input_o\ $ (VCC))) # (!tmp(0) & (\input[0]~input_o\ & VCC))
-- \tmp[0]~9\ = CARRY((tmp(0) & \input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmp(0),
	datab => \input[0]~input_o\,
	datad => VCC,
	combout => \tmp[0]~8_combout\,
	cout => \tmp[0]~9\);

-- Location: IOIBUF_X25_Y0_N1
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X16_Y1_N11
\tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tmp[0]~8_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(0));

-- Location: IOIBUF_X5_Y0_N22
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X16_Y1_N12
\tmp[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[1]~10_combout\ = (tmp(1) & ((\input[1]~input_o\ & (\tmp[0]~9\ & VCC)) # (!\input[1]~input_o\ & (!\tmp[0]~9\)))) # (!tmp(1) & ((\input[1]~input_o\ & (!\tmp[0]~9\)) # (!\input[1]~input_o\ & ((\tmp[0]~9\) # (GND)))))
-- \tmp[1]~11\ = CARRY((tmp(1) & (!\input[1]~input_o\ & !\tmp[0]~9\)) # (!tmp(1) & ((!\tmp[0]~9\) # (!\input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmp(1),
	datab => \input[1]~input_o\,
	datad => VCC,
	cin => \tmp[0]~9\,
	combout => \tmp[1]~10_combout\,
	cout => \tmp[1]~11\);

-- Location: FF_X16_Y1_N13
\tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tmp[1]~10_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(1));

-- Location: IOIBUF_X5_Y0_N15
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X16_Y1_N14
\tmp[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[2]~12_combout\ = ((\input[2]~input_o\ $ (tmp(2) $ (!\tmp[1]~11\)))) # (GND)
-- \tmp[2]~13\ = CARRY((\input[2]~input_o\ & ((tmp(2)) # (!\tmp[1]~11\))) # (!\input[2]~input_o\ & (tmp(2) & !\tmp[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => tmp(2),
	datad => VCC,
	cin => \tmp[1]~11\,
	combout => \tmp[2]~12_combout\,
	cout => \tmp[2]~13\);

-- Location: FF_X16_Y1_N15
\tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tmp[2]~12_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(2));

-- Location: IOIBUF_X16_Y24_N1
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\tmp[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[3]~14_combout\ = (\input[3]~input_o\ & ((tmp(3) & (\tmp[2]~13\ & VCC)) # (!tmp(3) & (!\tmp[2]~13\)))) # (!\input[3]~input_o\ & ((tmp(3) & (!\tmp[2]~13\)) # (!tmp(3) & ((\tmp[2]~13\) # (GND)))))
-- \tmp[3]~15\ = CARRY((\input[3]~input_o\ & (!tmp(3) & !\tmp[2]~13\)) # (!\input[3]~input_o\ & ((!\tmp[2]~13\) # (!tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => tmp(3),
	datad => VCC,
	cin => \tmp[2]~13\,
	combout => \tmp[3]~14_combout\,
	cout => \tmp[3]~15\);

-- Location: FF_X16_Y1_N17
\tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tmp[3]~14_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(3));

-- Location: IOIBUF_X21_Y0_N8
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LCCOMB_X16_Y1_N18
\tmp[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[4]~16_combout\ = ((\input[4]~input_o\ $ (tmp(4) $ (!\tmp[3]~15\)))) # (GND)
-- \tmp[4]~17\ = CARRY((\input[4]~input_o\ & ((tmp(4)) # (!\tmp[3]~15\))) # (!\input[4]~input_o\ & (tmp(4) & !\tmp[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input[4]~input_o\,
	datab => tmp(4),
	datad => VCC,
	cin => \tmp[3]~15\,
	combout => \tmp[4]~16_combout\,
	cout => \tmp[4]~17\);

-- Location: FF_X16_Y1_N19
\tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tmp[4]~16_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(4));

-- Location: IOIBUF_X16_Y0_N8
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LCCOMB_X16_Y1_N20
\tmp[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[5]~18_combout\ = (\input[5]~input_o\ & ((tmp(5) & (\tmp[4]~17\ & VCC)) # (!tmp(5) & (!\tmp[4]~17\)))) # (!\input[5]~input_o\ & ((tmp(5) & (!\tmp[4]~17\)) # (!tmp(5) & ((\tmp[4]~17\) # (GND)))))
-- \tmp[5]~19\ = CARRY((\input[5]~input_o\ & (!tmp(5) & !\tmp[4]~17\)) # (!\input[5]~input_o\ & ((!\tmp[4]~17\) # (!tmp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datab => tmp(5),
	datad => VCC,
	cin => \tmp[4]~17\,
	combout => \tmp[5]~18_combout\,
	cout => \tmp[5]~19\);

-- Location: FF_X16_Y1_N21
\tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tmp[5]~18_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(5));

-- Location: IOIBUF_X23_Y0_N8
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X16_Y1_N22
\tmp[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[6]~20_combout\ = ((tmp(6) $ (\input[6]~input_o\ $ (!\tmp[5]~19\)))) # (GND)
-- \tmp[6]~21\ = CARRY((tmp(6) & ((\input[6]~input_o\) # (!\tmp[5]~19\))) # (!tmp(6) & (\input[6]~input_o\ & !\tmp[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmp(6),
	datab => \input[6]~input_o\,
	datad => VCC,
	cin => \tmp[5]~19\,
	combout => \tmp[6]~20_combout\,
	cout => \tmp[6]~21\);

-- Location: FF_X16_Y1_N23
\tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tmp[6]~20_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(6));

-- Location: IOIBUF_X16_Y0_N22
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X16_Y1_N24
\tmp[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[7]~22_combout\ = \input[7]~input_o\ $ (\tmp[6]~21\ $ (tmp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input[7]~input_o\,
	datad => tmp(7),
	cin => \tmp[6]~21\,
	combout => \tmp[7]~22_combout\);

-- Location: FF_X16_Y1_N25
\tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tmp[7]~22_combout\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(7));

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;
END structure;


