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

-- DATE "09/06/2017 22:04:14"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	opcode : IN std_logic_vector(4 DOWNTO 0);
	in_acc : IN std_logic_vector(7 DOWNTO 0);
	inp_b : IN std_logic_vector(7 DOWNTO 0);
	N : BUFFER std_logic;
	C : BUFFER std_logic;
	Z : BUFFER std_logic;
	out_alu : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- N	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_alu[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_alu[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_alu[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_alu[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_alu[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_alu[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_alu[6]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_alu[7]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_acc[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp_b[7]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp_b[6]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_acc[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp_b[5]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_acc[5]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp_b[4]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_acc[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp_b[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_acc[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp_b[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_acc[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp_b[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_acc[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp_b[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_acc[0]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_in_acc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_inp_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_N : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_out_alu : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux8~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \N~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \out_alu[0]~output_o\ : std_logic;
SIGNAL \out_alu[1]~output_o\ : std_logic;
SIGNAL \out_alu[2]~output_o\ : std_logic;
SIGNAL \out_alu[3]~output_o\ : std_logic;
SIGNAL \out_alu[4]~output_o\ : std_logic;
SIGNAL \out_alu[5]~output_o\ : std_logic;
SIGNAL \out_alu[6]~output_o\ : std_logic;
SIGNAL \out_alu[7]~output_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \inp_b[7]~input_o\ : std_logic;
SIGNAL \in_acc[7]~input_o\ : std_logic;
SIGNAL \in_acc[6]~input_o\ : std_logic;
SIGNAL \inp_b[6]~input_o\ : std_logic;
SIGNAL \in_acc[5]~input_o\ : std_logic;
SIGNAL \inp_b[5]~input_o\ : std_logic;
SIGNAL \in_acc[4]~input_o\ : std_logic;
SIGNAL \inp_b[4]~input_o\ : std_logic;
SIGNAL \inp_b[3]~input_o\ : std_logic;
SIGNAL \in_acc[3]~input_o\ : std_logic;
SIGNAL \inp_b[2]~input_o\ : std_logic;
SIGNAL \in_acc[2]~input_o\ : std_logic;
SIGNAL \inp_b[1]~input_o\ : std_logic;
SIGNAL \in_acc[1]~input_o\ : std_logic;
SIGNAL \in_acc[0]~input_o\ : std_logic;
SIGNAL \inp_b[0]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~2clkctrl_outclk\ : std_logic;
SIGNAL \N$latch~combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \C$latch~combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux11~19_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux11~20_combout\ : std_logic;
SIGNAL \Mux11~21_combout\ : std_logic;
SIGNAL \Mux11~22_combout\ : std_logic;
SIGNAL \Mux11~23_combout\ : std_logic;
SIGNAL \Mux11~24_combout\ : std_logic;
SIGNAL \Mux11~25_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Mux11~16_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~15_combout\ : std_logic;
SIGNAL \Mux11~17_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mux11~14_combout\ : std_logic;
SIGNAL \Mux11~18_combout\ : std_logic;
SIGNAL \temp~12_combout\ : std_logic;
SIGNAL \Mux11~31_combout\ : std_logic;
SIGNAL \temp~13_combout\ : std_logic;
SIGNAL \Mux11~32_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \temp~11_combout\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \Mux11~30_combout\ : std_logic;
SIGNAL \temp~7_combout\ : std_logic;
SIGNAL \temp~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux11~28_combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL \temp~5_combout\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \Mux11~27_combout\ : std_logic;
SIGNAL \Mux11~29_combout\ : std_logic;
SIGNAL \Mux11~33_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux11~34_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux11~35_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux11~26_combout\ : std_logic;
SIGNAL \Mux11~36_combout\ : std_logic;
SIGNAL \Mux11~37_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux11~11_combout\ : std_logic;
SIGNAL \Mux11~10_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~12_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~13_combout\ : std_logic;
SIGNAL \Mux11~38_combout\ : std_logic;
SIGNAL \Mux11~39_combout\ : std_logic;
SIGNAL \Z$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux9~10_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~14_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux1~12_combout\ : std_logic;
SIGNAL \Mux1~13_combout\ : std_logic;
SIGNAL \Mux1~14_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \Mux1~15_combout\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \Mux1~17_combout\ : std_logic;
SIGNAL \Mux9~11_combout\ : std_logic;
SIGNAL \Mux9~12_combout\ : std_logic;
SIGNAL \Mux9~13_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux9~14_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_opcode <= opcode;
ww_in_acc <= in_acc;
ww_inp_b <= inp_b;
N <= ww_N;
C <= ww_C;
Z <= ww_Z;
out_alu <= ww_out_alu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux8~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux8~2_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N9
\N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N$latch~combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C$latch~combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Z$latch~combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\out_alu[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~14_combout\,
	devoe => ww_devoe,
	o => \out_alu[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\out_alu[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~7_combout\,
	devoe => ww_devoe,
	o => \out_alu[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\out_alu[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~7_combout\,
	devoe => ww_devoe,
	o => \out_alu[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\out_alu[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~7_combout\,
	devoe => ww_devoe,
	o => \out_alu[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\out_alu[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~7_combout\,
	devoe => ww_devoe,
	o => \out_alu[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\out_alu[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~7_combout\,
	devoe => ww_devoe,
	o => \out_alu[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\out_alu[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~17_combout\,
	devoe => ww_devoe,
	o => \out_alu[6]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\out_alu[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~7_combout\,
	devoe => ww_devoe,
	o => \out_alu[7]~output_o\);

-- Location: IOIBUF_X7_Y24_N1
\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\opcode[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\inp_b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp_b(7),
	o => \inp_b[7]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\in_acc[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_acc(7),
	o => \in_acc[7]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\in_acc[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_acc(6),
	o => \in_acc[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\inp_b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp_b(6),
	o => \inp_b[6]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\in_acc[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_acc(5),
	o => \in_acc[5]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\inp_b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp_b(5),
	o => \inp_b[5]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\in_acc[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_acc(4),
	o => \in_acc[4]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\inp_b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp_b(4),
	o => \inp_b[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\inp_b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp_b(3),
	o => \inp_b[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\in_acc[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_acc(3),
	o => \in_acc[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\inp_b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp_b(2),
	o => \inp_b[2]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\in_acc[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_acc(2),
	o => \in_acc[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\inp_b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp_b(1),
	o => \inp_b[1]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\in_acc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_acc(1),
	o => \in_acc[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\in_acc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_acc(0),
	o => \in_acc[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\inp_b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp_b(0),
	o => \inp_b[0]~input_o\);

-- Location: LCCOMB_X12_Y20_N10
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\in_acc[0]~input_o\ & ((GND) # (!\inp_b[0]~input_o\))) # (!\in_acc[0]~input_o\ & (\inp_b[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\in_acc[0]~input_o\) # (!\inp_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[0]~input_o\,
	datab => \inp_b[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X12_Y20_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\inp_b[1]~input_o\ & ((\in_acc[1]~input_o\ & (!\Add1~1\)) # (!\in_acc[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\inp_b[1]~input_o\ & ((\in_acc[1]~input_o\ & (\Add1~1\ & VCC)) # (!\in_acc[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\inp_b[1]~input_o\ & ((!\Add1~1\) # (!\in_acc[1]~input_o\))) # (!\inp_b[1]~input_o\ & (!\in_acc[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[1]~input_o\,
	datab => \in_acc[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X12_Y20_N14
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\inp_b[2]~input_o\ $ (\in_acc[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\inp_b[2]~input_o\ & (\in_acc[2]~input_o\ & !\Add1~3\)) # (!\inp_b[2]~input_o\ & ((\in_acc[2]~input_o\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[2]~input_o\,
	datab => \in_acc[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X12_Y20_N16
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\inp_b[3]~input_o\ & ((\in_acc[3]~input_o\ & (!\Add1~5\)) # (!\in_acc[3]~input_o\ & ((\Add1~5\) # (GND))))) # (!\inp_b[3]~input_o\ & ((\in_acc[3]~input_o\ & (\Add1~5\ & VCC)) # (!\in_acc[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\inp_b[3]~input_o\ & ((!\Add1~5\) # (!\in_acc[3]~input_o\))) # (!\inp_b[3]~input_o\ & (!\in_acc[3]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[3]~input_o\,
	datab => \in_acc[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X12_Y20_N18
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\in_acc[4]~input_o\ $ (\inp_b[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\in_acc[4]~input_o\ & ((!\Add1~7\) # (!\inp_b[4]~input_o\))) # (!\in_acc[4]~input_o\ & (!\inp_b[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[4]~input_o\,
	datab => \inp_b[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X12_Y20_N20
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\in_acc[5]~input_o\ & ((\inp_b[5]~input_o\ & (!\Add1~9\)) # (!\inp_b[5]~input_o\ & (\Add1~9\ & VCC)))) # (!\in_acc[5]~input_o\ & ((\inp_b[5]~input_o\ & ((\Add1~9\) # (GND))) # (!\inp_b[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\in_acc[5]~input_o\ & (\inp_b[5]~input_o\ & !\Add1~9\)) # (!\in_acc[5]~input_o\ & ((\inp_b[5]~input_o\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[5]~input_o\,
	datab => \inp_b[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X12_Y20_N22
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\in_acc[6]~input_o\ $ (\inp_b[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\in_acc[6]~input_o\ & ((!\Add1~11\) # (!\inp_b[6]~input_o\))) # (!\in_acc[6]~input_o\ & (!\inp_b[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[6]~input_o\,
	datab => \inp_b[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X12_Y20_N24
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \inp_b[7]~input_o\ $ (\Add1~13\ $ (!\in_acc[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[7]~input_o\,
	datad => \in_acc[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X5_Y20_N2
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\opcode[4]~input_o\ & ((\Add1~14_combout\))) # (!\opcode[4]~input_o\ & (\opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \Add1~14_combout\,
	combout => \Mux9~2_combout\);

-- Location: IOIBUF_X0_Y21_N8
\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: LCCOMB_X6_Y20_N8
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\in_acc[7]~input_o\ & (\opcode[4]~input_o\ & ((\opcode[1]~input_o\) # (\inp_b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[7]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \inp_b[7]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X5_Y20_N0
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\opcode[0]~input_o\ & ((\in_acc[7]~input_o\))) # (!\opcode[0]~input_o\ & (\Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \in_acc[7]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: IOIBUF_X13_Y24_N22
\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: LCCOMB_X5_Y20_N8
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & ((\Mux9~1_combout\ & (\opcode[4]~input_o\)) # (!\Mux9~1_combout\ & ((!\opcode[2]~input_o\))))) # (!\Mux9~2_combout\ & (((\Mux9~1_combout\ & \opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \opcode[4]~input_o\,
	datac => \Mux9~1_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X9_Y20_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\inp_b[0]~input_o\ & (\in_acc[0]~input_o\ $ (VCC))) # (!\inp_b[0]~input_o\ & (\in_acc[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\inp_b[0]~input_o\ & \in_acc[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[0]~input_o\,
	datab => \in_acc[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X9_Y20_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\inp_b[1]~input_o\ & ((\in_acc[1]~input_o\ & (\Add0~1\ & VCC)) # (!\in_acc[1]~input_o\ & (!\Add0~1\)))) # (!\inp_b[1]~input_o\ & ((\in_acc[1]~input_o\ & (!\Add0~1\)) # (!\in_acc[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\inp_b[1]~input_o\ & (!\in_acc[1]~input_o\ & !\Add0~1\)) # (!\inp_b[1]~input_o\ & ((!\Add0~1\) # (!\in_acc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[1]~input_o\,
	datab => \in_acc[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X9_Y20_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\in_acc[2]~input_o\ $ (\inp_b[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\in_acc[2]~input_o\ & ((\inp_b[2]~input_o\) # (!\Add0~3\))) # (!\in_acc[2]~input_o\ & (\inp_b[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[2]~input_o\,
	datab => \inp_b[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X9_Y20_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\inp_b[3]~input_o\ & ((\in_acc[3]~input_o\ & (\Add0~5\ & VCC)) # (!\in_acc[3]~input_o\ & (!\Add0~5\)))) # (!\inp_b[3]~input_o\ & ((\in_acc[3]~input_o\ & (!\Add0~5\)) # (!\in_acc[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\inp_b[3]~input_o\ & (!\in_acc[3]~input_o\ & !\Add0~5\)) # (!\inp_b[3]~input_o\ & ((!\Add0~5\) # (!\in_acc[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[3]~input_o\,
	datab => \in_acc[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X9_Y20_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\in_acc[4]~input_o\ $ (\inp_b[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\in_acc[4]~input_o\ & ((\inp_b[4]~input_o\) # (!\Add0~7\))) # (!\in_acc[4]~input_o\ & (\inp_b[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[4]~input_o\,
	datab => \inp_b[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X9_Y20_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\in_acc[5]~input_o\ & ((\inp_b[5]~input_o\ & (\Add0~9\ & VCC)) # (!\inp_b[5]~input_o\ & (!\Add0~9\)))) # (!\in_acc[5]~input_o\ & ((\inp_b[5]~input_o\ & (!\Add0~9\)) # (!\inp_b[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\in_acc[5]~input_o\ & (!\inp_b[5]~input_o\ & !\Add0~9\)) # (!\in_acc[5]~input_o\ & ((!\Add0~9\) # (!\inp_b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[5]~input_o\,
	datab => \inp_b[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X9_Y20_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\in_acc[6]~input_o\ $ (\inp_b[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\in_acc[6]~input_o\ & ((\inp_b[6]~input_o\) # (!\Add0~11\))) # (!\in_acc[6]~input_o\ & (\inp_b[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[6]~input_o\,
	datab => \inp_b[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X9_Y20_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \inp_b[7]~input_o\ $ (\Add0~13\ $ (\in_acc[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inp_b[7]~input_o\,
	datad => \in_acc[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X5_Y20_N24
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\Add0~14_combout\ & (\opcode[4]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X7_Y20_N4
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \in_acc[0]~input_o\ $ (VCC)
-- \Add3~1\ = CARRY(\in_acc[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[0]~input_o\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X7_Y20_N6
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\in_acc[1]~input_o\ & (!\Add3~1\)) # (!\in_acc[1]~input_o\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\in_acc[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[1]~input_o\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X7_Y20_N8
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\in_acc[2]~input_o\ & (\Add3~3\ $ (GND))) # (!\in_acc[2]~input_o\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\in_acc[2]~input_o\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[2]~input_o\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X7_Y20_N10
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\in_acc[3]~input_o\ & (!\Add3~5\)) # (!\in_acc[3]~input_o\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\in_acc[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[3]~input_o\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X7_Y20_N12
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\in_acc[4]~input_o\ & (\Add3~7\ $ (GND))) # (!\in_acc[4]~input_o\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\in_acc[4]~input_o\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[4]~input_o\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X7_Y20_N14
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\in_acc[5]~input_o\ & (!\Add3~9\)) # (!\in_acc[5]~input_o\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\in_acc[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[5]~input_o\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X7_Y20_N16
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\in_acc[6]~input_o\ & (\Add3~11\ $ (GND))) # (!\in_acc[6]~input_o\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\in_acc[6]~input_o\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[6]~input_o\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X7_Y20_N18
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \Add3~13\ $ (\in_acc[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \in_acc[7]~input_o\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X7_Y20_N24
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\opcode[2]~input_o\ & ((\opcode[1]~input_o\ & (\in_acc[7]~input_o\)) # (!\opcode[1]~input_o\ & ((\Add3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[7]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \Add3~14_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X10_Y19_N0
\temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = (\inp_b[7]~input_o\) # (\in_acc[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inp_b[7]~input_o\,
	datad => \in_acc[7]~input_o\,
	combout => \temp~1_combout\);

-- Location: LCCOMB_X9_Y21_N12
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \in_acc[0]~input_o\ $ (VCC)
-- \Add2~1\ = CARRY(\in_acc[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X9_Y21_N14
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\in_acc[1]~input_o\ & (\Add2~1\ & VCC)) # (!\in_acc[1]~input_o\ & (!\Add2~1\))
-- \Add2~3\ = CARRY((!\in_acc[1]~input_o\ & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X9_Y21_N16
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\in_acc[2]~input_o\ & ((GND) # (!\Add2~3\))) # (!\in_acc[2]~input_o\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((\in_acc[2]~input_o\) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X9_Y21_N18
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\in_acc[3]~input_o\ & (\Add2~5\ & VCC)) # (!\in_acc[3]~input_o\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\in_acc[3]~input_o\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X9_Y21_N20
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\in_acc[4]~input_o\ & ((GND) # (!\Add2~7\))) # (!\in_acc[4]~input_o\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((\in_acc[4]~input_o\) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[4]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X9_Y21_N22
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\in_acc[5]~input_o\ & (\Add2~9\ & VCC)) # (!\in_acc[5]~input_o\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\in_acc[5]~input_o\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[5]~input_o\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X9_Y21_N24
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\in_acc[6]~input_o\ & ((GND) # (!\Add2~11\))) # (!\in_acc[6]~input_o\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\in_acc[6]~input_o\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[6]~input_o\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X9_Y21_N26
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \in_acc[7]~input_o\ $ (!\Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[7]~input_o\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X10_Y19_N28
\temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = \inp_b[7]~input_o\ $ (\in_acc[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inp_b[7]~input_o\,
	datad => \in_acc[7]~input_o\,
	combout => \temp~0_combout\);

-- Location: LCCOMB_X10_Y19_N18
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\opcode[4]~input_o\ & (((\temp~0_combout\) # (\opcode[1]~input_o\)))) # (!\opcode[4]~input_o\ & (\in_acc[6]~input_o\ & ((!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[6]~input_o\,
	datab => \temp~0_combout\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X10_Y19_N2
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\opcode[1]~input_o\ & ((\Mux9~5_combout\ & (\temp~1_combout\)) # (!\Mux9~5_combout\ & ((\Add2~14_combout\))))) # (!\opcode[1]~input_o\ & (((\Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \opcode[1]~input_o\,
	datac => \Add2~14_combout\,
	datad => \Mux9~5_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X5_Y20_N10
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (!\opcode[0]~input_o\ & ((\Mux9~4_combout\) # ((!\opcode[2]~input_o\ & \Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Mux9~4_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~7_combout\);

-- Location: IOIBUF_X0_Y23_N15
\opcode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: LCCOMB_X5_Y20_N18
\Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\opcode[3]~input_o\ & (((\Mux9~8_combout\) # (\Mux9~7_combout\)))) # (!\opcode[3]~input_o\ & (\Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux9~8_combout\,
	datac => \Mux9~7_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X8_Y20_N4
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\opcode[1]~input_o\ & (\opcode[4]~input_o\ $ (\opcode[3]~input_o\ $ (!\opcode[2]~input_o\)))) # (!\opcode[1]~input_o\ & (\opcode[4]~input_o\ & (!\opcode[3]~input_o\ & !\opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X8_Y20_N6
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\opcode[4]~input_o\ & ((\opcode[3]~input_o\ & ((!\opcode[2]~input_o\))) # (!\opcode[3]~input_o\ & ((\opcode[2]~input_o\) # (!\opcode[1]~input_o\))))) # (!\opcode[4]~input_o\ & ((\opcode[3]~input_o\) # ((!\opcode[1]~input_o\ & 
-- \opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X1_Y11_N14
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\opcode[0]~input_o\ & (\Mux8~0_combout\)) # (!\opcode[0]~input_o\ & ((\Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~0_combout\,
	datac => \Mux8~1_combout\,
	datad => \opcode[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: CLKCTRL_G4
\Mux8~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux8~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux8~2clkctrl_outclk\);

-- Location: LCCOMB_X5_Y20_N14
\N$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \N$latch~combout\ = (GLOBAL(\Mux8~2clkctrl_outclk\) & (\Mux9~9_combout\)) # (!GLOBAL(\Mux8~2clkctrl_outclk\) & ((\N$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~9_combout\,
	datac => \N$latch~combout\,
	datad => \Mux8~2clkctrl_outclk\,
	combout => \N$latch~combout\);

-- Location: LCCOMB_X5_Y20_N16
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\opcode[3]~input_o\ & (((\in_acc[7]~input_o\ & !\opcode[2]~input_o\)))) # (!\opcode[3]~input_o\ & (\in_acc[0]~input_o\ & ((\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[0]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \in_acc[7]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X6_Y20_N16
\Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux10~2_combout\ & (!\opcode[4]~input_o\ & (!\opcode[1]~input_o\ & !\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X6_Y20_N30
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (!\opcode[3]~input_o\ & (((\opcode[0]~input_o\ & !\opcode[4]~input_o\)) # (!\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X6_Y20_N24
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\opcode[4]~input_o\ & ((\Add1~14_combout\ & ((\inp_b[7]~input_o\) # (!\in_acc[7]~input_o\))) # (!\Add1~14_combout\ & (!\in_acc[7]~input_o\ & \inp_b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \opcode[4]~input_o\,
	datac => \in_acc[7]~input_o\,
	datad => \inp_b[7]~input_o\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X6_Y20_N6
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~5_combout\ & ((\opcode[1]~input_o\) # (\Mux10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \Mux10~5_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X6_Y20_N2
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\opcode[0]~input_o\ & ((\Add0~14_combout\ & (\in_acc[7]~input_o\ & \inp_b[7]~input_o\)) # (!\Add0~14_combout\ & ((\in_acc[7]~input_o\) # (\inp_b[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Add0~14_combout\,
	datac => \in_acc[7]~input_o\,
	datad => \inp_b[7]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X6_Y20_N0
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & (\opcode[4]~input_o\ & (\opcode[3]~input_o\ & \opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X6_Y20_N12
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~9_combout\) # ((!\opcode[2]~input_o\ & ((\Mux10~7_combout\) # (\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~9_combout\,
	datab => \Mux10~7_combout\,
	datac => \Mux10~4_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X6_Y20_N26
\C$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \C$latch~combout\ = (GLOBAL(\Mux8~2clkctrl_outclk\) & (\Mux10~8_combout\)) # (!GLOBAL(\Mux8~2clkctrl_outclk\) & ((\C$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~8_combout\,
	datac => \C$latch~combout\,
	datad => \Mux8~2clkctrl_outclk\,
	combout => \C$latch~combout\);

-- Location: LCCOMB_X12_Y20_N4
\Mux11~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~19_combout\ = (!\Add1~0_combout\ & (!\Add1~14_combout\ & (!\opcode[1]~input_o\ & !\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~14_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Add1~2_combout\,
	combout => \Mux11~19_combout\);

-- Location: LCCOMB_X12_Y20_N6
\Mux11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~20_combout\ = (!\Add1~8_combout\ & (!\Add1~6_combout\ & (!\Add1~4_combout\ & !\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~6_combout\,
	datac => \Add1~4_combout\,
	datad => \Add1~10_combout\,
	combout => \Mux11~20_combout\);

-- Location: LCCOMB_X12_Y20_N0
\Mux11~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~21_combout\ = (\Mux11~19_combout\ & (!\Add1~12_combout\ & \Mux11~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~19_combout\,
	datac => \Add1~12_combout\,
	datad => \Mux11~20_combout\,
	combout => \Mux11~21_combout\);

-- Location: LCCOMB_X9_Y21_N28
\Mux11~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~22_combout\ = (\in_acc[1]~input_o\ & (\in_acc[2]~input_o\ & (\in_acc[4]~input_o\ & \in_acc[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[1]~input_o\,
	datab => \in_acc[2]~input_o\,
	datac => \in_acc[4]~input_o\,
	datad => \in_acc[3]~input_o\,
	combout => \Mux11~22_combout\);

-- Location: LCCOMB_X8_Y20_N12
\Mux11~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~23_combout\ = (\in_acc[0]~input_o\ & (\in_acc[7]~input_o\ & (\opcode[1]~input_o\ & \Mux11~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[0]~input_o\,
	datab => \in_acc[7]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Mux11~22_combout\,
	combout => \Mux11~23_combout\);

-- Location: LCCOMB_X8_Y20_N22
\Mux11~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~24_combout\ = (\Mux11~23_combout\ & (\opcode[0]~input_o\ & (\in_acc[5]~input_o\ & \in_acc[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~23_combout\,
	datab => \opcode[0]~input_o\,
	datac => \in_acc[5]~input_o\,
	datad => \in_acc[6]~input_o\,
	combout => \Mux11~24_combout\);

-- Location: LCCOMB_X8_Y20_N0
\Mux11~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~25_combout\ = (\opcode[4]~input_o\ & ((\Mux11~21_combout\) # ((\opcode[3]~input_o\)))) # (!\opcode[4]~input_o\ & (((\Mux11~24_combout\ & !\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~21_combout\,
	datab => \Mux11~24_combout\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Mux11~25_combout\);

-- Location: LCCOMB_X9_Y21_N0
\Mux11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~16_combout\ = (!\Add2~14_combout\ & (!\Add2~0_combout\ & (!\Add2~10_combout\ & !\Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~10_combout\,
	datad => \Add2~12_combout\,
	combout => \Mux11~16_combout\);

-- Location: LCCOMB_X14_Y20_N0
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\in_acc[4]~input_o\ & (!\in_acc[2]~input_o\ & (!\in_acc[3]~input_o\ & !\in_acc[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[4]~input_o\,
	datab => \in_acc[2]~input_o\,
	datac => \in_acc[3]~input_o\,
	datad => \in_acc[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X9_Y21_N2
\Mux11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~15_combout\ = (\Mux11~0_combout\ & (!\in_acc[5]~input_o\ & !\in_acc[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datac => \in_acc[5]~input_o\,
	datad => \in_acc[6]~input_o\,
	combout => \Mux11~15_combout\);

-- Location: LCCOMB_X9_Y21_N10
\Mux11~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~17_combout\ = (\opcode[1]~input_o\ & (\Mux11~16_combout\)) # (!\opcode[1]~input_o\ & (((!\in_acc[0]~input_o\ & \Mux11~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Mux11~16_combout\,
	datac => \in_acc[0]~input_o\,
	datad => \Mux11~15_combout\,
	combout => \Mux11~17_combout\);

-- Location: LCCOMB_X9_Y21_N8
\Mux11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~14_combout\ = (!\Add2~8_combout\ & (!\Add2~6_combout\ & (!\Add2~2_combout\ & !\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux11~14_combout\);

-- Location: LCCOMB_X8_Y20_N30
\Mux11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~18_combout\ = (!\opcode[0]~input_o\ & (\Mux11~17_combout\ & ((\Mux11~14_combout\) # (!\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mux11~17_combout\,
	datac => \opcode[1]~input_o\,
	datad => \Mux11~14_combout\,
	combout => \Mux11~18_combout\);

-- Location: LCCOMB_X11_Y20_N28
\temp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~12_combout\ = (\inp_b[5]~input_o\) # (\in_acc[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp_b[5]~input_o\,
	datac => \in_acc[5]~input_o\,
	combout => \temp~12_combout\);

-- Location: LCCOMB_X10_Y21_N8
\Mux11~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~31_combout\ = (\opcode[1]~input_o\ & !\in_acc[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[1]~input_o\,
	datad => \in_acc[0]~input_o\,
	combout => \Mux11~31_combout\);

-- Location: LCCOMB_X11_Y20_N26
\temp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~13_combout\ = (\in_acc[6]~input_o\) # (\inp_b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[6]~input_o\,
	datad => \inp_b[6]~input_o\,
	combout => \temp~13_combout\);

-- Location: LCCOMB_X10_Y20_N2
\Mux11~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~32_combout\ = (!\temp~1_combout\ & (!\temp~12_combout\ & (\Mux11~31_combout\ & !\temp~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~1_combout\,
	datab => \temp~12_combout\,
	datac => \Mux11~31_combout\,
	datad => \temp~13_combout\,
	combout => \Mux11~32_combout\);

-- Location: LCCOMB_X10_Y20_N12
\temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = (\in_acc[2]~input_o\) # (\inp_b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[2]~input_o\,
	datac => \inp_b[2]~input_o\,
	combout => \temp~9_combout\);

-- Location: LCCOMB_X11_Y20_N22
\temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~11_combout\ = (\inp_b[4]~input_o\) # (\in_acc[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp_b[4]~input_o\,
	datad => \in_acc[4]~input_o\,
	combout => \temp~11_combout\);

-- Location: LCCOMB_X10_Y20_N30
\temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = (\inp_b[3]~input_o\) # (\in_acc[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inp_b[3]~input_o\,
	datad => \in_acc[3]~input_o\,
	combout => \temp~10_combout\);

-- Location: LCCOMB_X11_Y20_N4
\temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~8_combout\ = (\in_acc[1]~input_o\) # (\inp_b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[1]~input_o\,
	datad => \inp_b[1]~input_o\,
	combout => \temp~8_combout\);

-- Location: LCCOMB_X10_Y20_N28
\Mux11~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~30_combout\ = (!\temp~9_combout\ & (!\temp~11_combout\ & (!\temp~10_combout\ & !\temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~9_combout\,
	datab => \temp~11_combout\,
	datac => \temp~10_combout\,
	datad => \temp~8_combout\,
	combout => \Mux11~30_combout\);

-- Location: LCCOMB_X11_Y20_N10
\temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~7_combout\ = \in_acc[6]~input_o\ $ (\inp_b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[6]~input_o\,
	datad => \inp_b[6]~input_o\,
	combout => \temp~7_combout\);

-- Location: LCCOMB_X11_Y20_N20
\temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~6_combout\ = \inp_b[5]~input_o\ $ (\in_acc[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp_b[5]~input_o\,
	datac => \in_acc[5]~input_o\,
	combout => \temp~6_combout\);

-- Location: LCCOMB_X9_Y20_N28
\Mux11~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~28_combout\ = (!\Add0~0_combout\ & (!\opcode[1]~input_o\ & (\in_acc[7]~input_o\ $ (!\inp_b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \in_acc[7]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \inp_b[7]~input_o\,
	combout => \Mux11~28_combout\);

-- Location: LCCOMB_X12_Y20_N30
\temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = \in_acc[2]~input_o\ $ (\inp_b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[2]~input_o\,
	datad => \inp_b[2]~input_o\,
	combout => \temp~3_combout\);

-- Location: LCCOMB_X13_Y20_N20
\temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~4_combout\ = \inp_b[3]~input_o\ $ (\in_acc[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp_b[3]~input_o\,
	datad => \in_acc[3]~input_o\,
	combout => \temp~4_combout\);

-- Location: LCCOMB_X13_Y20_N30
\temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~5_combout\ = \inp_b[4]~input_o\ $ (\in_acc[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inp_b[4]~input_o\,
	datad => \in_acc[4]~input_o\,
	combout => \temp~5_combout\);

-- Location: LCCOMB_X14_Y20_N18
\temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = \in_acc[1]~input_o\ $ (\inp_b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_acc[1]~input_o\,
	datad => \inp_b[1]~input_o\,
	combout => \temp~2_combout\);

-- Location: LCCOMB_X13_Y20_N28
\Mux11~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~27_combout\ = (!\temp~3_combout\ & (!\temp~4_combout\ & (!\temp~5_combout\ & !\temp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~3_combout\,
	datab => \temp~4_combout\,
	datac => \temp~5_combout\,
	datad => \temp~2_combout\,
	combout => \Mux11~27_combout\);

-- Location: LCCOMB_X13_Y20_N2
\Mux11~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~29_combout\ = (!\temp~7_combout\ & (!\temp~6_combout\ & (\Mux11~28_combout\ & \Mux11~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~7_combout\,
	datab => \temp~6_combout\,
	datac => \Mux11~28_combout\,
	datad => \Mux11~27_combout\,
	combout => \Mux11~29_combout\);

-- Location: LCCOMB_X9_Y20_N2
\Mux11~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~33_combout\ = (\Mux11~29_combout\) # ((\Mux11~32_combout\ & (\Mux11~30_combout\ & !\inp_b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~32_combout\,
	datab => \Mux11~30_combout\,
	datac => \inp_b[0]~input_o\,
	datad => \Mux11~29_combout\,
	combout => \Mux11~33_combout\);

-- Location: LCCOMB_X9_Y20_N8
\Mux11~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~34_combout\ = (\opcode[1]~input_o\ & (!\Add0~12_combout\ & (!\Add0~14_combout\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux11~34_combout\);

-- Location: LCCOMB_X9_Y20_N30
\Mux11~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~35_combout\ = (\Mux11~34_combout\ & !\Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~34_combout\,
	datac => \Add0~10_combout\,
	combout => \Mux11~35_combout\);

-- Location: LCCOMB_X9_Y20_N6
\Mux11~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~26_combout\ = (!\Add0~6_combout\ & (!\Add0~8_combout\ & (!\Add0~2_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux11~26_combout\);

-- Location: LCCOMB_X8_Y20_N26
\Mux11~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~36_combout\ = (\opcode[0]~input_o\ & (((\Mux11~35_combout\ & \Mux11~26_combout\)))) # (!\opcode[0]~input_o\ & (\Mux11~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \Mux11~33_combout\,
	datac => \Mux11~35_combout\,
	datad => \Mux11~26_combout\,
	combout => \Mux11~36_combout\);

-- Location: LCCOMB_X8_Y20_N16
\Mux11~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~37_combout\ = (\Mux11~25_combout\ & (((\Mux11~36_combout\) # (!\opcode[3]~input_o\)))) # (!\Mux11~25_combout\ & (\Mux11~18_combout\ & ((\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~25_combout\,
	datab => \Mux11~18_combout\,
	datac => \Mux11~36_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux11~37_combout\);

-- Location: LCCOMB_X8_Y20_N28
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\opcode[0]~input_o\ & (!\opcode[4]~input_o\ & ((\opcode[1]~input_o\) # (!\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X9_Y21_N4
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\opcode[1]~input_o\ & (!\in_acc[0]~input_o\ & (\opcode[4]~input_o\ $ (\opcode[3]~input_o\)))) # (!\opcode[1]~input_o\ & (((!\opcode[4]~input_o\ & !\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[0]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X9_Y21_N6
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~0_combout\ & (\Mux11~1_combout\ & (!\in_acc[7]~input_o\ & !\in_acc[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux11~1_combout\,
	datac => \in_acc[7]~input_o\,
	datad => \in_acc[6]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X8_Y20_N2
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~3_combout\ & (((\opcode[3]~input_o\)))) # (!\Mux11~3_combout\ & (!\in_acc[5]~input_o\ & (\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[5]~input_o\,
	datab => \Mux11~3_combout\,
	datac => \Mux11~2_combout\,
	datad => \opcode[3]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X12_Y20_N26
\Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\in_acc[2]~input_o\ & (!\inp_b[2]~input_o\ & ((!\in_acc[3]~input_o\) # (!\inp_b[3]~input_o\)))) # (!\in_acc[2]~input_o\ & (((!\in_acc[3]~input_o\)) # (!\inp_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[2]~input_o\,
	datab => \inp_b[3]~input_o\,
	datac => \in_acc[3]~input_o\,
	datad => \inp_b[2]~input_o\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X12_Y20_N8
\Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~11_combout\ = (\inp_b[7]~input_o\ & (!\in_acc[7]~input_o\ & ((!\in_acc[6]~input_o\) # (!\inp_b[6]~input_o\)))) # (!\inp_b[7]~input_o\ & (((!\in_acc[6]~input_o\) # (!\inp_b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[7]~input_o\,
	datab => \in_acc[7]~input_o\,
	datac => \inp_b[6]~input_o\,
	datad => \in_acc[6]~input_o\,
	combout => \Mux11~11_combout\);

-- Location: LCCOMB_X9_Y20_N0
\Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~10_combout\ = (\in_acc[5]~input_o\ & (!\inp_b[5]~input_o\ & ((!\in_acc[4]~input_o\) # (!\inp_b[4]~input_o\)))) # (!\in_acc[5]~input_o\ & (((!\in_acc[4]~input_o\) # (!\inp_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[5]~input_o\,
	datab => \inp_b[5]~input_o\,
	datac => \inp_b[4]~input_o\,
	datad => \in_acc[4]~input_o\,
	combout => \Mux11~10_combout\);

-- Location: LCCOMB_X12_Y20_N28
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\inp_b[1]~input_o\ & (!\in_acc[1]~input_o\ & ((!\inp_b[0]~input_o\) # (!\in_acc[0]~input_o\)))) # (!\inp_b[1]~input_o\ & (((!\inp_b[0]~input_o\)) # (!\in_acc[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[1]~input_o\,
	datab => \in_acc[0]~input_o\,
	datac => \inp_b[0]~input_o\,
	datad => \in_acc[1]~input_o\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X12_Y20_N2
\Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~12_combout\ = (\Mux11~9_combout\ & (\Mux11~11_combout\ & (\Mux11~10_combout\ & \Mux11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~9_combout\,
	datab => \Mux11~11_combout\,
	datac => \Mux11~10_combout\,
	datad => \Mux11~8_combout\,
	combout => \Mux11~12_combout\);

-- Location: LCCOMB_X7_Y20_N26
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\opcode[3]~input_o\ & (!\Add3~14_combout\ & (!\Add3~0_combout\ & !\opcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Add3~14_combout\,
	datac => \Add3~0_combout\,
	datad => \opcode[4]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X7_Y20_N28
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (!\Add3~6_combout\ & (!\Add3~8_combout\ & (!\Add3~4_combout\ & !\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~8_combout\,
	datac => \Add3~4_combout\,
	datad => \Add3~2_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X7_Y20_N30
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux11~5_combout\ & (\Mux11~6_combout\ & (!\Add3~10_combout\ & !\Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux11~6_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~12_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X8_Y20_N20
\Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~13_combout\ = (\Mux11~7_combout\) # ((\opcode[4]~input_o\ & (!\opcode[3]~input_o\ & \Mux11~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \Mux11~12_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~13_combout\);

-- Location: LCCOMB_X8_Y20_N10
\Mux11~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~38_combout\ = (\Mux11~4_combout\) # ((!\opcode[1]~input_o\ & (!\opcode[0]~input_o\ & \Mux11~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \Mux11~4_combout\,
	datad => \Mux11~13_combout\,
	combout => \Mux11~38_combout\);

-- Location: LCCOMB_X8_Y20_N8
\Mux11~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~39_combout\ = (\opcode[2]~input_o\ & ((\Mux11~38_combout\))) # (!\opcode[2]~input_o\ & (\Mux11~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~37_combout\,
	datac => \Mux11~38_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Mux11~39_combout\);

-- Location: LCCOMB_X8_Y20_N18
\Z$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z$latch~combout\ = (GLOBAL(\Mux8~2clkctrl_outclk\) & (\Mux11~39_combout\)) # (!GLOBAL(\Mux8~2clkctrl_outclk\) & ((\Z$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~39_combout\,
	datac => \Mux8~2clkctrl_outclk\,
	datad => \Z$latch~combout\,
	combout => \Z$latch~combout\);

-- Location: LCCOMB_X7_Y21_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Add0~0_combout\ & (\opcode[4]~input_o\ & !\opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X7_Y20_N0
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\opcode[2]~input_o\ & ((\opcode[4]~input_o\ & ((\Mux7~14_combout\))) # (!\opcode[4]~input_o\ & (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \Add3~0_combout\,
	datad => \Mux7~14_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X7_Y21_N18
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\opcode[0]~input_o\ & (((\Mux7~14_combout\)))) # (!\opcode[0]~input_o\ & ((\Mux7~0_combout\) # ((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux7~1_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Mux7~14_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X7_Y21_N10
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\in_acc[0]~input_o\) # ((!\opcode[2]~input_o\ & \inp_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \in_acc[0]~input_o\,
	datad => \inp_b[0]~input_o\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X7_Y21_N20
\Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (\opcode[0]~input_o\ & (\Add0~0_combout\)) # (!\opcode[0]~input_o\ & ((\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \opcode[0]~input_o\,
	datad => \Add2~0_combout\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X7_Y21_N4
\Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (\opcode[4]~input_o\ & ((\opcode[2]~input_o\))) # (!\opcode[4]~input_o\ & (\opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X7_Y21_N6
\Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\opcode[2]~input_o\ & ((\opcode[4]~input_o\ & ((\Mux7~14_combout\))) # (!\opcode[4]~input_o\ & (!\opcode[0]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[4]~input_o\ & (!\opcode[0]~input_o\)) # (!\opcode[4]~input_o\ & 
-- (\opcode[0]~input_o\ & \Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \Mux7~14_combout\,
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X7_Y21_N14
\Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (\Mux7~12_combout\ & (((\Mux7~11_combout\)))) # (!\Mux7~12_combout\ & ((\Mux7~11_combout\ & (\Mux7~9_combout\)) # (!\Mux7~11_combout\ & ((\Mux7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~9_combout\,
	datab => \Mux7~10_combout\,
	datac => \Mux7~12_combout\,
	datad => \Mux7~11_combout\,
	combout => \Mux7~13_combout\);

-- Location: LCCOMB_X7_Y21_N22
\Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~10_combout\ = (\opcode[4]~input_o\ & (\in_acc[0]~input_o\ & ((\inp_b[0]~input_o\)))) # (!\opcode[4]~input_o\ & (((\in_acc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[0]~input_o\,
	datab => \in_acc[1]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \inp_b[0]~input_o\,
	combout => \Mux9~10_combout\);

-- Location: LCCOMB_X7_Y21_N16
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\opcode[2]~input_o\ & (\Mux9~10_combout\)) # (!\opcode[2]~input_o\ & ((\opcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~10_combout\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X7_Y21_N8
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\opcode[0]~input_o\ & (((\in_acc[0]~input_o\) # (\opcode[2]~input_o\)))) # (!\opcode[0]~input_o\ & (\Add1~0_combout\ & ((!\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \in_acc[0]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X7_Y21_N30
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\opcode[2]~input_o\ & ((\Mux7~5_combout\ & ((\Mux7~14_combout\))) # (!\Mux7~5_combout\ & (\Mux7~6_combout\)))) # (!\opcode[2]~input_o\ & ((\Mux7~6_combout\ & (\Mux7~5_combout\)) # (!\Mux7~6_combout\ & ((\Mux7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \Mux7~6_combout\,
	datac => \Mux7~5_combout\,
	datad => \Mux7~14_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X7_Y21_N28
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\opcode[4]~input_o\ & ((\opcode[2]~input_o\))) # (!\opcode[4]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X7_Y21_N2
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & (\in_acc[0]~input_o\ $ ((!\opcode[4]~input_o\)))) # (!\Mux7~3_combout\ & (((\Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[0]~input_o\,
	datab => \Mux7~3_combout\,
	datac => \opcode[4]~input_o\,
	datad => \Mux7~14_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X7_Y21_N24
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\opcode[3]~input_o\ & (\opcode[1]~input_o\)) # (!\opcode[3]~input_o\ & ((\opcode[1]~input_o\ & ((\Mux7~4_combout\))) # (!\opcode[1]~input_o\ & (\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \Mux7~7_combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X7_Y21_N0
\Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~14_combout\ = (\opcode[3]~input_o\ & ((\Mux7~8_combout\ & ((\Mux7~13_combout\))) # (!\Mux7~8_combout\ & (\Mux7~2_combout\)))) # (!\opcode[3]~input_o\ & (((\Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \Mux7~2_combout\,
	datac => \Mux7~13_combout\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~14_combout\);

-- Location: LCCOMB_X8_Y20_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\opcode[3]~input_o\ & ((\opcode[4]~input_o\) # ((\opcode[1]~input_o\) # (\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X10_Y20_N6
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\opcode[2]~input_o\) # ((\opcode[0]~input_o\) # (!\opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X6_Y20_N28
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\opcode[1]~input_o\ & ((\opcode[0]~input_o\) # ((\opcode[4]~input_o\) # (\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X6_Y20_N10
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ((\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X10_Y20_N8
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux1~5_combout\ & (\Add0~2_combout\ & ((\Mux1~4_combout\)))) # (!\Mux1~5_combout\ & (((\Add3~2_combout\) # (!\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add3~2_combout\,
	datac => \Mux1~5_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X10_Y20_N26
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux1~3_combout\ & (((\Mux6~3_combout\)))) # (!\Mux1~3_combout\ & ((\Mux6~3_combout\ & (\Add2~2_combout\)) # (!\Mux6~3_combout\ & ((\temp~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Add2~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \temp~8_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X9_Y21_N30
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\opcode[1]~input_o\) # ((\opcode[2]~input_o\) # (!\opcode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[3]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X10_Y20_N24
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\opcode[2]~input_o\ & (\opcode[4]~input_o\)) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[4]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X14_Y20_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux1~1_combout\ & (((\opcode[2]~input_o\)))) # (!\Mux1~1_combout\ & ((\opcode[2]~input_o\ & ((\in_acc[2]~input_o\))) # (!\opcode[2]~input_o\ & (\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Mux1~1_combout\,
	datac => \in_acc[2]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X14_Y20_N26
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\in_acc[1]~input_o\ & (\Mux6~0_combout\ & ((\inp_b[1]~input_o\) # (!\Mux1~1_combout\)))) # (!\in_acc[1]~input_o\ & ((\Mux6~0_combout\ $ (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[1]~input_o\,
	datab => \in_acc[1]~input_o\,
	datac => \Mux6~0_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X13_Y20_N8
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux1~2_combout\ & ((\Mux6~1_combout\) # ((\Mux1~0_combout\)))) # (!\Mux1~2_combout\ & (((\in_acc[0]~input_o\ & !\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux6~1_combout\,
	datac => \in_acc[0]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X13_Y20_N14
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux1~0_combout\ & ((\Mux6~2_combout\ & (\Mux6~4_combout\)) # (!\Mux6~2_combout\ & ((\temp~2_combout\))))) # (!\Mux1~0_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux6~4_combout\,
	datac => \Mux6~2_combout\,
	datad => \temp~2_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X7_Y21_N26
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\opcode[0]~input_o\ & ((\opcode[4]~input_o\ $ (!\opcode[2]~input_o\)) # (!\opcode[1]~input_o\))) # (!\opcode[0]~input_o\ & (((\opcode[4]~input_o\ & \opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X6_Y20_N18
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & ((!\opcode[2]~input_o\))) # (!\opcode[4]~input_o\ & ((\opcode[2]~input_o\) # (!\opcode[0]~input_o\))))) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\ & (\opcode[0]~input_o\)) # 
-- (!\opcode[2]~input_o\ & ((!\opcode[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X6_Y20_N4
\Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\opcode[3]~input_o\ & (\Mux1~7_combout\)) # (!\opcode[3]~input_o\ & ((\Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~7_combout\,
	datac => \opcode[3]~input_o\,
	datad => \Mux1~8_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X8_Y20_N24
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\opcode[0]~input_o\ & (!\opcode[3]~input_o\ & (\opcode[1]~input_o\ $ (!\opcode[2]~input_o\)))) # (!\opcode[0]~input_o\ & (\opcode[1]~input_o\ & ((\opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X14_Y20_N12
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (!\Mux1~9_combout\ & ((\Mux1~6_combout\ & ((\in_acc[1]~input_o\))) # (!\Mux1~6_combout\ & (\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \Mux1~9_combout\,
	datac => \in_acc[1]~input_o\,
	datad => \Mux1~6_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X14_Y20_N2
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux6~6_combout\) # ((\Mux1~9_combout\ & \Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux1~9_combout\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X10_Y20_N22
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux1~5_combout\ & (((\Add0~4_combout\ & \Mux1~4_combout\)))) # (!\Mux1~5_combout\ & ((\Add3~4_combout\) # ((!\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add0~4_combout\,
	datac => \Mux1~5_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X10_Y20_N16
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & (((\Add2~4_combout\) # (\Mux1~3_combout\)))) # (!\Mux5~3_combout\ & (\temp~9_combout\ & ((!\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~9_combout\,
	datab => \Add2~4_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X13_Y20_N10
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux1~2_combout\ & (((\Mux1~0_combout\)))) # (!\Mux1~2_combout\ & ((\Mux1~0_combout\ & ((\temp~3_combout\))) # (!\Mux1~0_combout\ & (\in_acc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \in_acc[1]~input_o\,
	datac => \temp~3_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X13_Y20_N24
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux1~1_combout\ & (((\opcode[2]~input_o\)))) # (!\Mux1~1_combout\ & ((\opcode[2]~input_o\ & ((\in_acc[3]~input_o\))) # (!\opcode[2]~input_o\ & (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Mux1~1_combout\,
	datac => \opcode[2]~input_o\,
	datad => \in_acc[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X10_Y20_N0
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux1~1_combout\ & ((\in_acc[2]~input_o\ & (\inp_b[2]~input_o\ & \Mux5~0_combout\)) # (!\in_acc[2]~input_o\ & ((!\Mux5~0_combout\))))) # (!\Mux1~1_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp_b[2]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \in_acc[2]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X11_Y20_N24
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~2_combout\ & ((\Mux5~4_combout\) # ((!\Mux1~2_combout\)))) # (!\Mux5~2_combout\ & (((\Mux5~1_combout\ & \Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X14_Y20_N28
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (!\Mux1~9_combout\ & ((\Mux1~6_combout\ & ((\in_acc[2]~input_o\))) # (!\Mux1~6_combout\ & (\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Mux1~9_combout\,
	datac => \in_acc[2]~input_o\,
	datad => \Mux1~6_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X14_Y20_N6
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~6_combout\) # ((\Mux5~7_combout\ & \Mux1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \Mux5~6_combout\,
	datad => \Mux1~9_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X13_Y20_N4
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux1~1_combout\ & (((\opcode[2]~input_o\)))) # (!\Mux1~1_combout\ & ((\opcode[2]~input_o\ & ((\in_acc[4]~input_o\))) # (!\opcode[2]~input_o\ & (\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Mux1~1_combout\,
	datac => \opcode[2]~input_o\,
	datad => \in_acc[4]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X13_Y20_N6
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\in_acc[3]~input_o\ & (\Mux4~0_combout\ & ((\inp_b[3]~input_o\) # (!\Mux1~1_combout\)))) # (!\in_acc[3]~input_o\ & (\Mux1~1_combout\ $ ((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[3]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \Mux4~0_combout\,
	datad => \inp_b[3]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X13_Y20_N16
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux1~2_combout\ & ((\Mux1~0_combout\) # ((\Mux4~1_combout\)))) # (!\Mux1~2_combout\ & (!\Mux1~0_combout\ & (\in_acc[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~0_combout\,
	datac => \in_acc[2]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X10_Y20_N18
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux1~5_combout\ & (((\Add0~6_combout\ & \Mux1~4_combout\)))) # (!\Mux1~5_combout\ & ((\Add3~6_combout\) # ((!\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add0~6_combout\,
	datac => \Mux1~5_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X10_Y20_N4
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~3_combout\ & (((\Add2~6_combout\) # (\Mux1~3_combout\)))) # (!\Mux4~3_combout\ & (\temp~10_combout\ & ((!\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~10_combout\,
	datab => \Mux4~3_combout\,
	datac => \Add2~6_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X13_Y20_N26
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux1~0_combout\ & ((\Mux4~2_combout\ & (\Mux4~4_combout\)) # (!\Mux4~2_combout\ & ((\temp~4_combout\))))) # (!\Mux1~0_combout\ & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux4~4_combout\,
	datad => \temp~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X14_Y20_N8
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (!\Mux1~9_combout\ & ((\Mux1~6_combout\ & ((\in_acc[3]~input_o\))) # (!\Mux1~6_combout\ & (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux1~6_combout\,
	datac => \in_acc[3]~input_o\,
	datad => \Mux1~9_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X14_Y20_N22
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\) # ((\Mux4~7_combout\ & \Mux1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \Mux4~6_combout\,
	datad => \Mux1~9_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X13_Y20_N0
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux1~2_combout\ & (\Mux1~0_combout\)) # (!\Mux1~2_combout\ & ((\Mux1~0_combout\ & (\temp~5_combout\)) # (!\Mux1~0_combout\ & ((\in_acc[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~0_combout\,
	datac => \temp~5_combout\,
	datad => \in_acc[3]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X13_Y20_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux1~1_combout\ & (((\opcode[2]~input_o\)))) # (!\Mux1~1_combout\ & ((\opcode[2]~input_o\ & (\in_acc[5]~input_o\)) # (!\opcode[2]~input_o\ & ((\Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[5]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \opcode[2]~input_o\,
	datad => \Add1~8_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X13_Y20_N22
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\inp_b[4]~input_o\ & \in_acc[4]~input_o\)) # (!\Mux1~1_combout\))) # (!\Mux3~0_combout\ & (\Mux1~1_combout\ & ((!\in_acc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux1~1_combout\,
	datac => \inp_b[4]~input_o\,
	datad => \in_acc[4]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X10_Y20_N10
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux1~5_combout\ & (\Mux1~4_combout\ & ((\Add0~8_combout\)))) # (!\Mux1~5_combout\ & (((\Add3~8_combout\)) # (!\Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux1~4_combout\,
	datac => \Add3~8_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X10_Y20_N20
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & (((\Add2~8_combout\) # (\Mux1~3_combout\)))) # (!\Mux3~3_combout\ & (\temp~11_combout\ & ((!\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \temp~11_combout\,
	datac => \Add2~8_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X13_Y20_N18
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux1~2_combout\ & ((\Mux3~2_combout\ & ((\Mux3~4_combout\))) # (!\Mux3~2_combout\ & (\Mux3~1_combout\)))) # (!\Mux1~2_combout\ & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X14_Y20_N16
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (!\Mux1~9_combout\ & ((\Mux1~6_combout\ & (\in_acc[4]~input_o\)) # (!\Mux1~6_combout\ & ((\Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[4]~input_o\,
	datab => \Mux3~5_combout\,
	datac => \Mux1~9_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X14_Y20_N30
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~6_combout\) # ((\Mux3~7_combout\ & \Mux1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Mux3~6_combout\,
	datad => \Mux1~9_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X7_Y20_N2
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux1~4_combout\ & ((\Mux1~5_combout\ & ((\Add0~10_combout\))) # (!\Mux1~5_combout\ & (\Add3~10_combout\)))) # (!\Mux1~4_combout\ & (!\Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datab => \Mux1~5_combout\,
	datac => \Add3~10_combout\,
	datad => \Add0~10_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X10_Y20_N14
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux1~3_combout\ & (((\Mux2~3_combout\)))) # (!\Mux1~3_combout\ & ((\Mux2~3_combout\ & ((\Add2~10_combout\))) # (!\Mux2~3_combout\ & (\temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \temp~12_combout\,
	datac => \Add2~10_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X11_Y20_N6
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux1~1_combout\ & (\opcode[2]~input_o\)) # (!\Mux1~1_combout\ & ((\opcode[2]~input_o\ & ((\in_acc[6]~input_o\))) # (!\opcode[2]~input_o\ & (\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \opcode[2]~input_o\,
	datac => \Add1~10_combout\,
	datad => \in_acc[6]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X11_Y20_N16
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux1~1_combout\ & ((\in_acc[5]~input_o\ & (\inp_b[5]~input_o\ & \Mux2~0_combout\)) # (!\in_acc[5]~input_o\ & ((!\Mux2~0_combout\))))) # (!\Mux1~1_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \inp_b[5]~input_o\,
	datac => \in_acc[5]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X11_Y20_N2
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux1~2_combout\ & ((\Mux2~1_combout\) # ((\Mux1~0_combout\)))) # (!\Mux1~2_combout\ & (((!\Mux1~0_combout\ & \in_acc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux1~0_combout\,
	datad => \in_acc[4]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X11_Y20_N12
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~2_combout\ & ((\Mux2~4_combout\) # ((!\Mux1~0_combout\)))) # (!\Mux2~2_combout\ & (((\Mux1~0_combout\ & \temp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux2~2_combout\,
	datac => \Mux1~0_combout\,
	datad => \temp~6_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X14_Y20_N24
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!\Mux1~9_combout\ & ((\Mux1~6_combout\ & (\in_acc[5]~input_o\)) # (!\Mux1~6_combout\ & ((\Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[5]~input_o\,
	datab => \Mux1~9_combout\,
	datac => \Mux2~5_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X14_Y20_N14
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\) # ((\Mux1~9_combout\ & \Mux2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~9_combout\,
	datac => \Mux2~7_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X11_Y20_N14
\Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~12_combout\ = (\Mux1~2_combout\ & (((\Mux1~0_combout\)))) # (!\Mux1~2_combout\ & ((\Mux1~0_combout\ & ((\temp~7_combout\))) # (!\Mux1~0_combout\ & (\in_acc[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \in_acc[5]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \temp~7_combout\,
	combout => \Mux1~12_combout\);

-- Location: LCCOMB_X7_Y20_N20
\Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~13_combout\ = (\Mux1~5_combout\ & (\Add0~12_combout\ & (\Mux1~4_combout\))) # (!\Mux1~5_combout\ & (((\Add3~12_combout\) # (!\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Mux1~5_combout\,
	datac => \Mux1~4_combout\,
	datad => \Add3~12_combout\,
	combout => \Mux1~13_combout\);

-- Location: LCCOMB_X11_Y20_N8
\Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~14_combout\ = (\Mux1~3_combout\ & (((\Mux1~13_combout\)))) # (!\Mux1~3_combout\ & ((\Mux1~13_combout\ & ((\Add2~12_combout\))) # (!\Mux1~13_combout\ & (\temp~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~13_combout\,
	datab => \Add2~12_combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux1~13_combout\,
	combout => \Mux1~14_combout\);

-- Location: LCCOMB_X11_Y20_N18
\Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\Mux1~1_combout\ & (((\opcode[2]~input_o\)))) # (!\Mux1~1_combout\ & ((\opcode[2]~input_o\ & (\in_acc[7]~input_o\)) # (!\opcode[2]~input_o\ & ((\Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \in_acc[7]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \Add1~12_combout\,
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X11_Y20_N0
\Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = (\in_acc[6]~input_o\ & (\Mux1~10_combout\ & ((\inp_b[6]~input_o\) # (!\Mux1~1_combout\)))) # (!\in_acc[6]~input_o\ & (\Mux1~10_combout\ $ ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_acc[6]~input_o\,
	datab => \Mux1~10_combout\,
	datac => \Mux1~1_combout\,
	datad => \inp_b[6]~input_o\,
	combout => \Mux1~11_combout\);

-- Location: LCCOMB_X11_Y20_N30
\Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~15_combout\ = (\Mux1~2_combout\ & ((\Mux1~12_combout\ & (\Mux1~14_combout\)) # (!\Mux1~12_combout\ & ((\Mux1~11_combout\))))) # (!\Mux1~2_combout\ & (\Mux1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~12_combout\,
	datac => \Mux1~14_combout\,
	datad => \Mux1~11_combout\,
	combout => \Mux1~15_combout\);

-- Location: LCCOMB_X14_Y20_N20
\Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~16_combout\ = (!\Mux1~9_combout\ & ((\Mux1~6_combout\ & ((\in_acc[6]~input_o\))) # (!\Mux1~6_combout\ & (\Mux1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~15_combout\,
	datab => \Mux1~9_combout\,
	datac => \in_acc[6]~input_o\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~16_combout\);

-- Location: LCCOMB_X14_Y20_N10
\Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~17_combout\ = (\Mux1~16_combout\) # ((\Mux1~17_combout\ & \Mux1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~17_combout\,
	datab => \Mux1~16_combout\,
	datad => \Mux1~9_combout\,
	combout => \Mux1~17_combout\);

-- Location: LCCOMB_X5_Y20_N22
\Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~11_combout\ = (\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & ((\Mux0~7_combout\))) # (!\opcode[4]~input_o\ & (!\in_acc[7]~input_o\)))) # (!\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & (\in_acc[7]~input_o\)) # (!\opcode[4]~input_o\ & 
-- ((\Mux0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \in_acc[7]~input_o\,
	datad => \Mux0~7_combout\,
	combout => \Mux9~11_combout\);

-- Location: LCCOMB_X6_Y20_N22
\Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~12_combout\ = (\Mux9~0_combout\) # ((\opcode[1]~input_o\ & (!\opcode[4]~input_o\ & \Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \Mux0~7_combout\,
	combout => \Mux9~12_combout\);

-- Location: LCCOMB_X6_Y20_N20
\Mux9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~13_combout\ = (\opcode[1]~input_o\ & (((\Mux0~7_combout\)))) # (!\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & (\Add1~14_combout\)) # (!\opcode[4]~input_o\ & ((\Mux0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \Mux0~7_combout\,
	combout => \Mux9~13_combout\);

-- Location: LCCOMB_X6_Y20_N14
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\opcode[2]~input_o\ & ((\opcode[0]~input_o\) # ((\Mux9~12_combout\)))) # (!\opcode[2]~input_o\ & (!\opcode[0]~input_o\ & ((\Mux9~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \Mux9~12_combout\,
	datad => \Mux9~13_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X5_Y20_N28
\Mux9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~14_combout\ = (\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & (\in_acc[7]~input_o\)) # (!\opcode[4]~input_o\ & ((\Mux0~7_combout\))))) # (!\opcode[1]~input_o\ & (((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \in_acc[7]~input_o\,
	datad => \Mux0~7_combout\,
	combout => \Mux9~14_combout\);

-- Location: LCCOMB_X5_Y20_N26
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\opcode[0]~input_o\ & ((\Mux0~5_combout\ & ((\Mux9~14_combout\))) # (!\Mux0~5_combout\ & (\Mux9~11_combout\)))) # (!\opcode[0]~input_o\ & (((\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~11_combout\,
	datab => \opcode[0]~input_o\,
	datac => \Mux0~5_combout\,
	datad => \Mux9~14_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X5_Y20_N6
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\opcode[0]~input_o\ & (\Add0~14_combout\)) # (!\opcode[0]~input_o\ & ((\Mux9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X7_Y20_N22
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\opcode[0]~input_o\ & (((\opcode[1]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\ & (\in_acc[7]~input_o\)) # (!\opcode[1]~input_o\ & ((\Add3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \in_acc[7]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \Add3~14_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X5_Y20_N4
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\opcode[4]~input_o\ & (\opcode[2]~input_o\ & ((\Mux0~1_combout\) # (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X5_Y20_N30
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~1_combout\ & (\opcode[2]~input_o\ $ (((\opcode[0]~input_o\ & !\opcode[4]~input_o\))))) # (!\Mux0~1_combout\ & ((\opcode[0]~input_o\) # ((\opcode[4]~input_o\ & \opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \opcode[0]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X5_Y20_N20
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~2_combout\ & (((\Mux0~3_combout\)))) # (!\Mux0~2_combout\ & ((\Mux0~3_combout\ & ((\Mux0~7_combout\))) # (!\Mux0~3_combout\ & (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux0~2_combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X5_Y20_N12
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\opcode[3]~input_o\ & ((\Mux0~4_combout\))) # (!\opcode[3]~input_o\ & (\Mux0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[3]~input_o\,
	datac => \Mux0~6_combout\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~7_combout\);

ww_N <= \N~output_o\;

ww_C <= \C~output_o\;

ww_Z <= \Z~output_o\;

ww_out_alu(0) <= \out_alu[0]~output_o\;

ww_out_alu(1) <= \out_alu[1]~output_o\;

ww_out_alu(2) <= \out_alu[2]~output_o\;

ww_out_alu(3) <= \out_alu[3]~output_o\;

ww_out_alu(4) <= \out_alu[4]~output_o\;

ww_out_alu(5) <= \out_alu[5]~output_o\;

ww_out_alu(6) <= \out_alu[6]~output_o\;

ww_out_alu(7) <= \out_alu[7]~output_o\;
END structure;


