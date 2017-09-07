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

-- DATE "09/06/2017 19:32:37"

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

ENTITY 	datapath IS
    PORT (
	N : OUT std_logic;
	clk : IN std_logic;
	ALUinSel : IN std_logic;
	accload : IN std_logic;
	from_cu : IN std_logic_vector(7 DOWNTO 0);
	from_memory : IN std_logic_vector(7 DOWNTO 0);
	zero : IN std_logic_vector(7 DOWNTO 0);
	mux2sel : IN std_logic_vector(1 DOWNTO 0);
	mux1sel : IN std_logic;
	opcode : IN std_logic_vector(4 DOWNTO 0);
	C : OUT std_logic;
	Z : OUT std_logic;
	acc_out : OUT std_logic_vector(7 DOWNTO 0);
	to_memory : OUT std_logic_vector(7 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- N	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[7]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[6]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[5]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[4]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[2]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[1]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- to_memory[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[7]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux2sel[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_cu[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux2sel[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero[7]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accload	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_cu[6]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero[6]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_cu[5]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_cu[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_cu[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_cu[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_cu[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_cu[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- from_memory[0]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux1sel	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUinSel	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ALUinSel : std_logic;
SIGNAL ww_accload : std_logic;
SIGNAL ww_from_cu : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_from_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_zero : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mux2sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_mux1sel : std_logic;
SIGNAL ww_opcode : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_acc_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_to_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|Mux8~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \N~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \acc_out[7]~output_o\ : std_logic;
SIGNAL \acc_out[6]~output_o\ : std_logic;
SIGNAL \acc_out[5]~output_o\ : std_logic;
SIGNAL \acc_out[4]~output_o\ : std_logic;
SIGNAL \acc_out[3]~output_o\ : std_logic;
SIGNAL \acc_out[2]~output_o\ : std_logic;
SIGNAL \acc_out[1]~output_o\ : std_logic;
SIGNAL \acc_out[0]~output_o\ : std_logic;
SIGNAL \to_memory[7]~output_o\ : std_logic;
SIGNAL \to_memory[6]~output_o\ : std_logic;
SIGNAL \to_memory[5]~output_o\ : std_logic;
SIGNAL \to_memory[4]~output_o\ : std_logic;
SIGNAL \to_memory[3]~output_o\ : std_logic;
SIGNAL \to_memory[2]~output_o\ : std_logic;
SIGNAL \to_memory[1]~output_o\ : std_logic;
SIGNAL \to_memory[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \from_cu[7]~input_o\ : std_logic;
SIGNAL \mux1sel~input_o\ : std_logic;
SIGNAL \from_memory[7]~input_o\ : std_logic;
SIGNAL \inst|output[7]~0_combout\ : std_logic;
SIGNAL \zero[7]~input_o\ : std_logic;
SIGNAL \mux2sel[0]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \ALUinSel~input_o\ : std_logic;
SIGNAL \from_memory[6]~input_o\ : std_logic;
SIGNAL \from_cu[6]~input_o\ : std_logic;
SIGNAL \inst|output[6]~1_combout\ : std_logic;
SIGNAL \zero[6]~input_o\ : std_logic;
SIGNAL \mux2sel[1]~input_o\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~7_combout\ : std_logic;
SIGNAL \from_memory[5]~input_o\ : std_logic;
SIGNAL \from_cu[5]~input_o\ : std_logic;
SIGNAL \inst|output[5]~2_combout\ : std_logic;
SIGNAL \zero[5]~input_o\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~12_combout\ : std_logic;
SIGNAL \inst5|Mux1~13_combout\ : std_logic;
SIGNAL \inst5|Mux1~14_combout\ : std_logic;
SIGNAL \inst5|Mux1~15_combout\ : std_logic;
SIGNAL \inst5|temp~19_combout\ : std_logic;
SIGNAL \inst1|output[5]~2_combout\ : std_logic;
SIGNAL \from_cu[4]~input_o\ : std_logic;
SIGNAL \zero[3]~input_o\ : std_logic;
SIGNAL \from_memory[3]~input_o\ : std_logic;
SIGNAL \from_cu[3]~input_o\ : std_logic;
SIGNAL \inst5|temp~22_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_combout\ : std_logic;
SIGNAL \inst|output[3]~4_combout\ : std_logic;
SIGNAL \inst1|output[3]~4_combout\ : std_logic;
SIGNAL \from_cu[2]~input_o\ : std_logic;
SIGNAL \from_memory[2]~input_o\ : std_logic;
SIGNAL \inst|output[2]~5_combout\ : std_logic;
SIGNAL \zero[2]~input_o\ : std_logic;
SIGNAL \inst5|temp~34_combout\ : std_logic;
SIGNAL \inst5|Mux1~4_combout\ : std_logic;
SIGNAL \from_cu[1]~input_o\ : std_logic;
SIGNAL \from_memory[1]~input_o\ : std_logic;
SIGNAL \inst|output[1]~6_combout\ : std_logic;
SIGNAL \inst5|temp~26_combout\ : std_logic;
SIGNAL \inst1|output[1]~6_combout\ : std_logic;
SIGNAL \from_memory[0]~input_o\ : std_logic;
SIGNAL \from_cu[0]~input_o\ : std_logic;
SIGNAL \inst|output[0]~7_combout\ : std_logic;
SIGNAL \inst2|output[0]~7_combout\ : std_logic;
SIGNAL \inst5|Mux0~15_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add2~0_combout\ : std_logic;
SIGNAL \inst5|Mux11~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~11_combout\ : std_logic;
SIGNAL \inst5|Mux7~12_combout\ : std_logic;
SIGNAL \inst5|Mux7~13_combout\ : std_logic;
SIGNAL \inst5|Mux7~14_combout\ : std_logic;
SIGNAL \inst5|Add3~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~2_combout\ : std_logic;
SIGNAL \inst5|Mux7~3_combout\ : std_logic;
SIGNAL \inst5|Mux7~4_combout\ : std_logic;
SIGNAL \inst5|Mux7~5_combout\ : std_logic;
SIGNAL \inst5|Mux7~6_combout\ : std_logic;
SIGNAL \inst5|Mux7~16_combout\ : std_logic;
SIGNAL \inst5|Mux7~7_combout\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~8_combout\ : std_logic;
SIGNAL \inst5|Mux7~9_combout\ : std_logic;
SIGNAL \inst5|Mux7~10_combout\ : std_logic;
SIGNAL \inst5|Mux7~15_combout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \zero[0]~input_o\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
SIGNAL \accload~input_o\ : std_logic;
SIGNAL \inst1|output[0]~7_combout\ : std_logic;
SIGNAL \inst5|Add1~1\ : std_logic;
SIGNAL \inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst2|output[2]~5_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~1_combout\ : std_logic;
SIGNAL \inst5|Add2~1\ : std_logic;
SIGNAL \inst5|Add2~2_combout\ : std_logic;
SIGNAL \inst5|Add3~1\ : std_logic;
SIGNAL \inst5|Add3~2_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Mux1~8_combout\ : std_logic;
SIGNAL \inst5|Mux6~3_combout\ : std_logic;
SIGNAL \inst5|temp~27_combout\ : std_logic;
SIGNAL \inst5|Mux1~6_combout\ : std_logic;
SIGNAL \inst5|Mux6~4_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|temp~35_combout\ : std_logic;
SIGNAL \inst5|Mux6~2_combout\ : std_logic;
SIGNAL \inst5|Mux6~5_combout\ : std_logic;
SIGNAL \inst5|Mux6~6_combout\ : std_logic;
SIGNAL \inst5|Mux6~7_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \zero[1]~input_o\ : std_logic;
SIGNAL \inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst2|output[1]~6_combout\ : std_logic;
SIGNAL \inst5|Add1~3\ : std_logic;
SIGNAL \inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|temp~24_combout\ : std_logic;
SIGNAL \inst5|Mux5~1_combout\ : std_logic;
SIGNAL \inst5|Mux5~2_combout\ : std_logic;
SIGNAL \inst5|Add3~3\ : std_logic;
SIGNAL \inst5|Add3~4_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Mux5~3_combout\ : std_logic;
SIGNAL \inst5|temp~25_combout\ : std_logic;
SIGNAL \inst5|Add2~3\ : std_logic;
SIGNAL \inst5|Add2~4_combout\ : std_logic;
SIGNAL \inst5|Mux5~4_combout\ : std_logic;
SIGNAL \inst5|Mux5~5_combout\ : std_logic;
SIGNAL \inst5|Mux5~6_combout\ : std_logic;
SIGNAL \inst5|Mux5~7_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|output[2]~5_combout\ : std_logic;
SIGNAL \inst5|Add1~5\ : std_logic;
SIGNAL \inst5|Add1~6_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~1_combout\ : std_logic;
SIGNAL \inst5|temp~33_combout\ : std_logic;
SIGNAL \inst5|Mux4~2_combout\ : std_logic;
SIGNAL \inst5|temp~23_combout\ : std_logic;
SIGNAL \inst5|Add2~5\ : std_logic;
SIGNAL \inst5|Add2~6_combout\ : std_logic;
SIGNAL \inst5|Add3~5\ : std_logic;
SIGNAL \inst5|Add3~6_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Mux4~3_combout\ : std_logic;
SIGNAL \inst5|Mux4~4_combout\ : std_logic;
SIGNAL \inst5|Mux4~5_combout\ : std_logic;
SIGNAL \inst5|Mux4~6_combout\ : std_logic;
SIGNAL \inst5|Mux4~7_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|output[3]~4_combout\ : std_logic;
SIGNAL \from_memory[4]~input_o\ : std_logic;
SIGNAL \inst|output[4]~3_combout\ : std_logic;
SIGNAL \inst1|output[4]~3_combout\ : std_logic;
SIGNAL \inst5|Add1~7\ : std_logic;
SIGNAL \inst5|Add1~8_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|temp~20_combout\ : std_logic;
SIGNAL \inst5|Mux3~1_combout\ : std_logic;
SIGNAL \inst5|Mux3~2_combout\ : std_logic;
SIGNAL \inst5|temp~32_combout\ : std_logic;
SIGNAL \inst5|Add2~7\ : std_logic;
SIGNAL \inst5|Add2~8_combout\ : std_logic;
SIGNAL \inst5|Add3~7\ : std_logic;
SIGNAL \inst5|Add3~8_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Mux3~3_combout\ : std_logic;
SIGNAL \inst5|temp~21_combout\ : std_logic;
SIGNAL \inst5|Mux3~4_combout\ : std_logic;
SIGNAL \inst5|Mux3~5_combout\ : std_logic;
SIGNAL \inst5|Mux3~6_combout\ : std_logic;
SIGNAL \inst5|Mux3~7_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \zero[4]~input_o\ : std_logic;
SIGNAL \inst3|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|output[4]~3_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add3~9\ : std_logic;
SIGNAL \inst5|Add3~10_combout\ : std_logic;
SIGNAL \inst5|Mux2~3_combout\ : std_logic;
SIGNAL \inst5|Add2~9\ : std_logic;
SIGNAL \inst5|Add2~10_combout\ : std_logic;
SIGNAL \inst5|Mux2~4_combout\ : std_logic;
SIGNAL \inst5|temp~31_combout\ : std_logic;
SIGNAL \inst5|Mux2~2_combout\ : std_logic;
SIGNAL \inst5|Add1~9\ : std_logic;
SIGNAL \inst5|Add1~10_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|temp~18_combout\ : std_logic;
SIGNAL \inst5|Mux2~1_combout\ : std_logic;
SIGNAL \inst5|Mux2~5_combout\ : std_logic;
SIGNAL \inst5|Mux2~6_combout\ : std_logic;
SIGNAL \inst5|Mux2~7_combout\ : std_logic;
SIGNAL \inst3|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|output[5]~2_combout\ : std_logic;
SIGNAL \inst5|Add3~11\ : std_logic;
SIGNAL \inst5|Add3~12_combout\ : std_logic;
SIGNAL \inst1|output[6]~1_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Mux1~9_combout\ : std_logic;
SIGNAL \inst5|temp~17_combout\ : std_logic;
SIGNAL \inst5|Add2~11\ : std_logic;
SIGNAL \inst5|Add2~12_combout\ : std_logic;
SIGNAL \inst5|Mux1~10_combout\ : std_logic;
SIGNAL \inst5|Add1~11\ : std_logic;
SIGNAL \inst5|Add1~12_combout\ : std_logic;
SIGNAL \inst5|temp~16_combout\ : std_logic;
SIGNAL \inst5|Mux1~2_combout\ : std_logic;
SIGNAL \inst5|Mux1~3_combout\ : std_logic;
SIGNAL \inst5|Mux1~5_combout\ : std_logic;
SIGNAL \inst5|temp~30_combout\ : std_logic;
SIGNAL \inst5|Mux1~11_combout\ : std_logic;
SIGNAL \inst5|Mux1~16_combout\ : std_logic;
SIGNAL \inst5|Mux1~17_combout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|output[6]~1_combout\ : std_logic;
SIGNAL \inst5|temp~29_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|temp~14_combout\ : std_logic;
SIGNAL \inst5|Add2~13\ : std_logic;
SIGNAL \inst5|Add2~14_combout\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Mux0~2_combout\ : std_logic;
SIGNAL \inst5|Add3~13\ : std_logic;
SIGNAL \inst5|Add3~14_combout\ : std_logic;
SIGNAL \inst5|Mux0~3_combout\ : std_logic;
SIGNAL \inst5|Mux0~5_combout\ : std_logic;
SIGNAL \inst5|Mux0~4_combout\ : std_logic;
SIGNAL \inst5|Mux0~6_combout\ : std_logic;
SIGNAL \inst5|temp~15_combout\ : std_logic;
SIGNAL \inst5|Mux0~8_combout\ : std_logic;
SIGNAL \inst5|Mux0~9_combout\ : std_logic;
SIGNAL \inst1|output[7]~0_combout\ : std_logic;
SIGNAL \inst5|Add1~13\ : std_logic;
SIGNAL \inst5|Add1~14_combout\ : std_logic;
SIGNAL \inst5|Mux0~10_combout\ : std_logic;
SIGNAL \inst5|Mux0~11_combout\ : std_logic;
SIGNAL \inst5|Mux0~12_combout\ : std_logic;
SIGNAL \inst5|Mux0~7_combout\ : std_logic;
SIGNAL \inst5|Mux0~13_combout\ : std_logic;
SIGNAL \inst5|Mux0~14_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|output[7]~0_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Mux9~4_combout\ : std_logic;
SIGNAL \inst5|Mux0~18_combout\ : std_logic;
SIGNAL \inst5|Mux0~17_combout\ : std_logic;
SIGNAL \inst5|Mux9~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~16_combout\ : std_logic;
SIGNAL \inst5|Mux9~1_combout\ : std_logic;
SIGNAL \inst5|Mux9~2_combout\ : std_logic;
SIGNAL \inst5|Mux9~3_combout\ : std_logic;
SIGNAL \inst5|Mux9~5_combout\ : std_logic;
SIGNAL \inst5|Mux8~1_combout\ : std_logic;
SIGNAL \inst5|Mux8~0_combout\ : std_logic;
SIGNAL \inst5|Mux8~2_combout\ : std_logic;
SIGNAL \inst5|Mux8~2clkctrl_outclk\ : std_logic;
SIGNAL \inst5|N~combout\ : std_logic;
SIGNAL \inst4|N~q\ : std_logic;
SIGNAL \inst5|Mux10~1_combout\ : std_logic;
SIGNAL \inst5|Mux10~5_combout\ : std_logic;
SIGNAL \inst5|Mux10~4_combout\ : std_logic;
SIGNAL \inst5|Mux10~0_combout\ : std_logic;
SIGNAL \inst5|Mux10~2_combout\ : std_logic;
SIGNAL \inst5|Mux10~3_combout\ : std_logic;
SIGNAL \inst5|Mux10~6_combout\ : std_logic;
SIGNAL \inst5|C~combout\ : std_logic;
SIGNAL \inst4|C~q\ : std_logic;
SIGNAL \inst5|Mux11~18_combout\ : std_logic;
SIGNAL \inst5|Mux11~17_combout\ : std_logic;
SIGNAL \inst5|Mux11~19_combout\ : std_logic;
SIGNAL \inst5|Mux11~14_combout\ : std_logic;
SIGNAL \inst5|Mux11~15_combout\ : std_logic;
SIGNAL \inst5|Mux11~16_combout\ : std_logic;
SIGNAL \inst5|Mux11~21_combout\ : std_logic;
SIGNAL \inst5|Mux11~20_combout\ : std_logic;
SIGNAL \inst5|Mux11~22_combout\ : std_logic;
SIGNAL \inst5|Mux11~23_combout\ : std_logic;
SIGNAL \inst5|Mux11~10_combout\ : std_logic;
SIGNAL \inst5|Mux11~11_combout\ : std_logic;
SIGNAL \inst5|Mux11~12_combout\ : std_logic;
SIGNAL \inst5|Mux11~8_combout\ : std_logic;
SIGNAL \inst5|Mux11~7_combout\ : std_logic;
SIGNAL \inst5|Mux11~9_combout\ : std_logic;
SIGNAL \inst5|Mux11~13_combout\ : std_logic;
SIGNAL \inst5|Mux11~1_combout\ : std_logic;
SIGNAL \inst5|Mux11~2_combout\ : std_logic;
SIGNAL \inst5|Mux11~3_combout\ : std_logic;
SIGNAL \inst5|Mux11~4_combout\ : std_logic;
SIGNAL \inst5|Mux11~5_combout\ : std_logic;
SIGNAL \inst5|Mux11~6_combout\ : std_logic;
SIGNAL \inst5|Mux11~24_combout\ : std_logic;
SIGNAL \inst5|Mux11~32_combout\ : std_logic;
SIGNAL \inst5|Mux11~33_combout\ : std_logic;
SIGNAL \inst5|Mux11~30_combout\ : std_logic;
SIGNAL \inst5|temp~28_combout\ : std_logic;
SIGNAL \inst5|Mux11~29_combout\ : std_logic;
SIGNAL \inst5|Mux11~31_combout\ : std_logic;
SIGNAL \inst5|Mux11~34_combout\ : std_logic;
SIGNAL \inst5|Mux11~27_combout\ : std_logic;
SIGNAL \inst5|Mux11~26_combout\ : std_logic;
SIGNAL \inst5|Mux11~28_combout\ : std_logic;
SIGNAL \inst5|Mux11~35_combout\ : std_logic;
SIGNAL \inst5|Mux11~25_combout\ : std_logic;
SIGNAL \inst5|Mux11~36_combout\ : std_logic;
SIGNAL \inst5|Z~combout\ : std_logic;
SIGNAL \inst4|Z~q\ : std_logic;
SIGNAL \inst6|output\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

N <= ww_N;
ww_clk <= clk;
ww_ALUinSel <= ALUinSel;
ww_accload <= accload;
ww_from_cu <= from_cu;
ww_from_memory <= from_memory;
ww_zero <= zero;
ww_mux2sel <= mux2sel;
ww_mux1sel <= mux1sel;
ww_opcode <= opcode;
C <= ww_C;
Z <= ww_Z;
acc_out <= ww_acc_out;
to_memory <= ww_to_memory;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|Mux8~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|Mux8~2_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y24_N9
\N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|N~q\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|C~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Z~q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\acc_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output\(7),
	devoe => ww_devoe,
	o => \acc_out[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\acc_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output\(6),
	devoe => ww_devoe,
	o => \acc_out[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\acc_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output\(5),
	devoe => ww_devoe,
	o => \acc_out[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\acc_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output\(4),
	devoe => ww_devoe,
	o => \acc_out[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\acc_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output\(3),
	devoe => ww_devoe,
	o => \acc_out[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\acc_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output\(2),
	devoe => ww_devoe,
	o => \acc_out[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\acc_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output\(1),
	devoe => ww_devoe,
	o => \acc_out[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\acc_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|output\(0),
	devoe => ww_devoe,
	o => \acc_out[0]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\to_memory[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux0~14_combout\,
	devoe => ww_devoe,
	o => \to_memory[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\to_memory[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux1~17_combout\,
	devoe => ww_devoe,
	o => \to_memory[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\to_memory[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux2~7_combout\,
	devoe => ww_devoe,
	o => \to_memory[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\to_memory[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux3~7_combout\,
	devoe => ww_devoe,
	o => \to_memory[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\to_memory[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux4~7_combout\,
	devoe => ww_devoe,
	o => \to_memory[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\to_memory[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux5~7_combout\,
	devoe => ww_devoe,
	o => \to_memory[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\to_memory[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux6~7_combout\,
	devoe => ww_devoe,
	o => \to_memory[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\to_memory[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux7~15_combout\,
	devoe => ww_devoe,
	o => \to_memory[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N8
\opcode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\opcode[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\from_cu[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_cu(7),
	o => \from_cu[7]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\mux1sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux1sel,
	o => \mux1sel~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\from_memory[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(7),
	o => \from_memory[7]~input_o\);

-- Location: LCCOMB_X12_Y20_N4
\inst|output[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output[7]~0_combout\ = (\mux1sel~input_o\ & ((\from_memory[7]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \from_cu[7]~input_o\,
	datac => \mux1sel~input_o\,
	datad => \from_memory[7]~input_o\,
	combout => \inst|output[7]~0_combout\);

-- Location: IOIBUF_X34_Y17_N15
\zero[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero(7),
	o => \zero[7]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\mux2sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux2sel(0),
	o => \mux2sel[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\ALUinSel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUinSel,
	o => \ALUinSel~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\from_memory[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(6),
	o => \from_memory[6]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\from_cu[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_cu(6),
	o => \from_cu[6]~input_o\);

-- Location: LCCOMB_X12_Y21_N8
\inst|output[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output[6]~1_combout\ = (\mux1sel~input_o\ & (\from_memory[6]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1sel~input_o\,
	datac => \from_memory[6]~input_o\,
	datad => \from_cu[6]~input_o\,
	combout => \inst|output[6]~1_combout\);

-- Location: IOIBUF_X0_Y23_N1
\zero[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero(6),
	o => \zero[6]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\mux2sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux2sel(1),
	o => \mux2sel[1]~input_o\);

-- Location: LCCOMB_X12_Y21_N10
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\mux2sel[1]~input_o\ & (((\zero[6]~input_o\ & \mux2sel[0]~input_o\)))) # (!\mux2sel[1]~input_o\ & ((\from_cu[6]~input_o\) # ((!\mux2sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[6]~input_o\,
	datab => \zero[6]~input_o\,
	datac => \mux2sel[1]~input_o\,
	datad => \mux2sel[0]~input_o\,
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y20_N6
\inst5|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~7_combout\ = ((\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \inst5|Mux1~7_combout\);

-- Location: IOIBUF_X28_Y24_N22
\from_memory[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(5),
	o => \from_memory[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\from_cu[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_cu(5),
	o => \from_cu[5]~input_o\);

-- Location: LCCOMB_X12_Y20_N28
\inst|output[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output[5]~2_combout\ = (\mux1sel~input_o\ & (\from_memory[5]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1sel~input_o\,
	datac => \from_memory[5]~input_o\,
	datad => \from_cu[5]~input_o\,
	combout => \inst|output[5]~2_combout\);

-- Location: IOIBUF_X16_Y0_N1
\zero[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero(5),
	o => \zero[5]~input_o\);

-- Location: LCCOMB_X12_Y20_N26
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\mux2sel[1]~input_o\ & ((\mux2sel[0]~input_o\ & (\zero[5]~input_o\)) # (!\mux2sel[0]~input_o\ & ((\from_memory[5]~input_o\))))) # (!\mux2sel[1]~input_o\ & (((!\mux2sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2sel[1]~input_o\,
	datab => \zero[5]~input_o\,
	datac => \from_memory[5]~input_o\,
	datad => \mux2sel[0]~input_o\,
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y20_N28
\inst5|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~12_combout\ = (\opcode[0]~input_o\ & (!\opcode[3]~input_o\ & (\opcode[2]~input_o\ $ (!\opcode[1]~input_o\)))) # (!\opcode[0]~input_o\ & (\opcode[2]~input_o\ & (\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \inst5|Mux1~12_combout\);

-- Location: LCCOMB_X14_Y18_N28
\inst5|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~13_combout\ = (\opcode[3]~input_o\ & ((\opcode[2]~input_o\) # ((\opcode[0]~input_o\ & !\opcode[1]~input_o\)))) # (!\opcode[3]~input_o\ & ((\opcode[1]~input_o\ & ((!\opcode[2]~input_o\))) # (!\opcode[1]~input_o\ & (\opcode[0]~input_o\ & 
-- \opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \inst5|Mux1~13_combout\);

-- Location: LCCOMB_X14_Y18_N14
\inst5|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~14_combout\ = (\opcode[0]~input_o\ & (\opcode[1]~input_o\ & (\opcode[3]~input_o\ $ (!\opcode[2]~input_o\)))) # (!\opcode[0]~input_o\ & ((\opcode[3]~input_o\) # ((!\opcode[1]~input_o\ & \opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \inst5|Mux1~14_combout\);

-- Location: LCCOMB_X14_Y18_N0
\inst5|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~15_combout\ = (\opcode[4]~input_o\ & (\inst5|Mux1~13_combout\)) # (!\opcode[4]~input_o\ & ((!\inst5|Mux1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mux1~13_combout\,
	datac => \inst5|Mux1~14_combout\,
	datad => \opcode[4]~input_o\,
	combout => \inst5|Mux1~15_combout\);

-- Location: LCCOMB_X12_Y20_N24
\inst5|temp~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~19_combout\ = (\inst6|output\(5)) # ((\mux1sel~input_o\ & ((\from_memory[5]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[5]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \from_memory[5]~input_o\,
	datad => \inst6|output\(5),
	combout => \inst5|temp~19_combout\);

-- Location: LCCOMB_X12_Y20_N30
\inst1|output[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[5]~2_combout\ = (\ALUinSel~input_o\ & (\inst|output[5]~2_combout\)) # (!\ALUinSel~input_o\ & ((\inst6|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|output[5]~2_combout\,
	datac => \ALUinSel~input_o\,
	datad => \inst6|output\(5),
	combout => \inst1|output[5]~2_combout\);

-- Location: IOIBUF_X16_Y0_N22
\from_cu[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_cu(4),
	o => \from_cu[4]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\zero[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero(3),
	o => \zero[3]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\from_memory[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(3),
	o => \from_memory[3]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\from_cu[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_cu(3),
	o => \from_cu[3]~input_o\);

-- Location: LCCOMB_X12_Y22_N12
\inst5|temp~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~22_combout\ = (\inst6|output\(3) & ((\mux1sel~input_o\ & ((\from_memory[3]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[3]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \inst6|output\(3),
	datad => \from_memory[3]~input_o\,
	combout => \inst5|temp~22_combout\);

-- Location: LCCOMB_X13_Y21_N24
\inst5|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = (\opcode[2]~input_o\ & (\opcode[4]~input_o\)) # (!\opcode[2]~input_o\ & ((\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	combout => \inst5|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y22_N0
\inst|output[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output[3]~4_combout\ = (\mux1sel~input_o\ & ((\from_memory[3]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[3]~input_o\,
	datac => \from_memory[3]~input_o\,
	datad => \mux1sel~input_o\,
	combout => \inst|output[3]~4_combout\);

-- Location: LCCOMB_X12_Y18_N30
\inst1|output[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[3]~4_combout\ = (\ALUinSel~input_o\ & ((\inst|output[3]~4_combout\))) # (!\ALUinSel~input_o\ & (\inst6|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUinSel~input_o\,
	datac => \inst6|output\(3),
	datad => \inst|output[3]~4_combout\,
	combout => \inst1|output[3]~4_combout\);

-- Location: IOIBUF_X0_Y5_N15
\from_cu[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_cu(2),
	o => \from_cu[2]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\from_memory[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(2),
	o => \from_memory[2]~input_o\);

-- Location: LCCOMB_X13_Y19_N10
\inst|output[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output[2]~5_combout\ = (\mux1sel~input_o\ & ((\from_memory[2]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_cu[2]~input_o\,
	datad => \from_memory[2]~input_o\,
	combout => \inst|output[2]~5_combout\);

-- Location: IOIBUF_X0_Y7_N1
\zero[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero(2),
	o => \zero[2]~input_o\);

-- Location: LCCOMB_X13_Y19_N4
\inst5|temp~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~34_combout\ = \inst6|output\(2) $ (((\mux1sel~input_o\ & (\from_memory[2]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_memory[2]~input_o\,
	datac => \from_cu[2]~input_o\,
	datad => \inst6|output\(2),
	combout => \inst5|temp~34_combout\);

-- Location: LCCOMB_X11_Y19_N12
\inst5|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~4_combout\ = (\opcode[2]~input_o\) # ((\opcode[1]~input_o\) # (!\opcode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \inst5|Mux1~4_combout\);

-- Location: IOIBUF_X0_Y8_N15
\from_cu[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_cu(1),
	o => \from_cu[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\from_memory[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(1),
	o => \from_memory[1]~input_o\);

-- Location: LCCOMB_X13_Y19_N24
\inst|output[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output[1]~6_combout\ = (\mux1sel~input_o\ & ((\from_memory[1]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_cu[1]~input_o\,
	datad => \from_memory[1]~input_o\,
	combout => \inst|output[1]~6_combout\);

-- Location: LCCOMB_X13_Y19_N8
\inst5|temp~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~26_combout\ = (\inst6|output\(1) & ((\mux1sel~input_o\ & (\from_memory[1]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_memory[1]~input_o\,
	datac => \from_cu[1]~input_o\,
	datad => \inst6|output\(1),
	combout => \inst5|temp~26_combout\);

-- Location: LCCOMB_X13_Y19_N0
\inst1|output[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[1]~6_combout\ = (\ALUinSel~input_o\ & (\inst|output[1]~6_combout\)) # (!\ALUinSel~input_o\ & ((\inst6|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUinSel~input_o\,
	datac => \inst|output[1]~6_combout\,
	datad => \inst6|output\(1),
	combout => \inst1|output[1]~6_combout\);

-- Location: IOIBUF_X34_Y12_N15
\from_memory[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(0),
	o => \from_memory[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\from_cu[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_cu(0),
	o => \from_cu[0]~input_o\);

-- Location: LCCOMB_X12_Y22_N2
\inst|output[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output[0]~7_combout\ = (\mux1sel~input_o\ & (\from_memory[0]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datac => \from_memory[0]~input_o\,
	datad => \from_cu[0]~input_o\,
	combout => \inst|output[0]~7_combout\);

-- Location: LCCOMB_X13_Y22_N8
\inst2|output[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[0]~7_combout\ = (\ALUinSel~input_o\ & ((\inst6|output\(0)))) # (!\ALUinSel~input_o\ & (\inst|output[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[0]~7_combout\,
	datab => \ALUinSel~input_o\,
	datad => \inst6|output\(0),
	combout => \inst2|output[0]~7_combout\);

-- Location: LCCOMB_X14_Y22_N24
\inst5|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~15_combout\ = (\opcode[4]~input_o\ & ((\inst5|Mux7~15_combout\))) # (!\opcode[4]~input_o\ & (\inst2|output[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[0]~7_combout\,
	datac => \opcode[4]~input_o\,
	datad => \inst5|Mux7~15_combout\,
	combout => \inst5|Mux0~15_combout\);

-- Location: LCCOMB_X12_Y18_N4
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = (\inst1|output[0]~7_combout\ & (\inst2|output[0]~7_combout\ $ (VCC))) # (!\inst1|output[0]~7_combout\ & (\inst2|output[0]~7_combout\ & VCC))
-- \inst5|Add0~1\ = CARRY((\inst1|output[0]~7_combout\ & \inst2|output[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[0]~7_combout\,
	datab => \inst2|output[0]~7_combout\,
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X13_Y22_N12
\inst5|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~0_combout\ = \inst2|output[0]~7_combout\ $ (VCC)
-- \inst5|Add2~1\ = CARRY(\inst2|output[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output[0]~7_combout\,
	datad => VCC,
	combout => \inst5|Add2~0_combout\,
	cout => \inst5|Add2~1\);

-- Location: LCCOMB_X12_Y22_N6
\inst5|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~0_combout\ = (!\inst6|output\(0) & ((\mux1sel~input_o\ & ((!\from_memory[0]~input_o\))) # (!\mux1sel~input_o\ & (!\from_cu[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_cu[0]~input_o\,
	datac => \from_memory[0]~input_o\,
	datad => \inst6|output\(0),
	combout => \inst5|Mux11~0_combout\);

-- Location: LCCOMB_X14_Y22_N6
\inst5|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~11_combout\ = (\opcode[4]~input_o\ & (((\opcode[0]~input_o\) # (!\inst5|Mux11~0_combout\)))) # (!\opcode[4]~input_o\ & (\inst5|Add2~0_combout\ & (!\opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~0_combout\,
	datab => \opcode[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \inst5|Mux11~0_combout\,
	combout => \inst5|Mux7~11_combout\);

-- Location: LCCOMB_X14_Y22_N8
\inst5|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~12_combout\ = (\opcode[2]~input_o\ & (!\opcode[0]~input_o\)) # (!\opcode[2]~input_o\ & (\inst5|Mux7~11_combout\ & ((\inst5|Add0~0_combout\) # (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \inst5|Add0~0_combout\,
	datad => \inst5|Mux7~11_combout\,
	combout => \inst5|Mux7~12_combout\);

-- Location: LCCOMB_X14_Y22_N26
\inst5|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~13_combout\ = (\opcode[0]~input_o\ & ((\opcode[2]~input_o\ & ((\inst5|Mux7~11_combout\))) # (!\opcode[2]~input_o\ & ((\inst5|Add0~0_combout\) # (!\inst5|Mux7~11_combout\))))) # (!\opcode[0]~input_o\ & (!\opcode[2]~input_o\ & 
-- ((\inst5|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \inst5|Add0~0_combout\,
	datad => \inst5|Mux7~11_combout\,
	combout => \inst5|Mux7~13_combout\);

-- Location: LCCOMB_X14_Y22_N20
\inst5|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~14_combout\ = (\inst5|Mux7~12_combout\ & (((\inst5|Mux0~15_combout\) # (\inst5|Mux7~13_combout\)))) # (!\inst5|Mux7~12_combout\ & (\inst5|Mux7~15_combout\ & ((\inst5|Mux7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux7~15_combout\,
	datab => \inst5|Mux0~15_combout\,
	datac => \inst5|Mux7~12_combout\,
	datad => \inst5|Mux7~13_combout\,
	combout => \inst5|Mux7~14_combout\);

-- Location: LCCOMB_X13_Y18_N12
\inst5|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~0_combout\ = \inst2|output[0]~7_combout\ $ (VCC)
-- \inst5|Add3~1\ = CARRY(\inst2|output[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output[0]~7_combout\,
	datad => VCC,
	combout => \inst5|Add3~0_combout\,
	cout => \inst5|Add3~1\);

-- Location: LCCOMB_X14_Y18_N8
\inst5|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~2_combout\ = (\opcode[2]~input_o\ & ((\opcode[4]~input_o\ & (\inst5|Mux7~15_combout\)) # (!\opcode[4]~input_o\ & ((\inst5|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \inst5|Mux7~15_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst5|Mux7~2_combout\);

-- Location: LCCOMB_X11_Y18_N10
\inst5|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~3_combout\ = (\inst5|Mux7~2_combout\) # ((\opcode[4]~input_o\ & (!\opcode[2]~input_o\ & \inst5|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \inst5|Mux7~2_combout\,
	datad => \inst5|Add0~0_combout\,
	combout => \inst5|Mux7~3_combout\);

-- Location: LCCOMB_X14_Y22_N14
\inst5|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~4_combout\ = (\opcode[0]~input_o\ & ((\inst5|Mux7~15_combout\))) # (!\opcode[0]~input_o\ & (\inst5|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \inst5|Mux7~3_combout\,
	datad => \inst5|Mux7~15_combout\,
	combout => \inst5|Mux7~4_combout\);

-- Location: LCCOMB_X14_Y22_N0
\inst5|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~5_combout\ = (\opcode[4]~input_o\ & ((\opcode[2]~input_o\))) # (!\opcode[4]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[4]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \inst5|Mux7~5_combout\);

-- Location: LCCOMB_X14_Y22_N30
\inst5|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~6_combout\ = (\inst5|Mux7~5_combout\ & (\inst2|output[0]~7_combout\ $ ((!\opcode[4]~input_o\)))) # (!\inst5|Mux7~5_combout\ & (((\inst5|Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[0]~7_combout\,
	datab => \inst5|Mux7~5_combout\,
	datac => \opcode[4]~input_o\,
	datad => \inst5|Mux7~15_combout\,
	combout => \inst5|Mux7~6_combout\);

-- Location: LCCOMB_X13_Y22_N2
\inst5|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~16_combout\ = (\inst6|output\(0) & ((\mux1sel~input_o\ & ((\from_memory[0]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output\(0),
	datab => \mux1sel~input_o\,
	datac => \from_cu[0]~input_o\,
	datad => \from_memory[0]~input_o\,
	combout => \inst5|Mux7~16_combout\);

-- Location: LCCOMB_X14_Y22_N12
\inst5|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~7_combout\ = (\opcode[2]~input_o\ & ((\opcode[4]~input_o\ & ((\inst5|Mux7~16_combout\))) # (!\opcode[4]~input_o\ & (\inst2|output[1]~6_combout\)))) # (!\opcode[2]~input_o\ & (((\opcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[1]~6_combout\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[4]~input_o\,
	datad => \inst5|Mux7~16_combout\,
	combout => \inst5|Mux7~7_combout\);

-- Location: LCCOMB_X12_Y19_N0
\inst5|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = (\inst1|output[0]~7_combout\ & (\inst2|output[0]~7_combout\ $ (VCC))) # (!\inst1|output[0]~7_combout\ & ((\inst2|output[0]~7_combout\) # (GND)))
-- \inst5|Add1~1\ = CARRY((\inst2|output[0]~7_combout\) # (!\inst1|output[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[0]~7_combout\,
	datab => \inst2|output[0]~7_combout\,
	datad => VCC,
	combout => \inst5|Add1~0_combout\,
	cout => \inst5|Add1~1\);

-- Location: LCCOMB_X14_Y22_N22
\inst5|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~8_combout\ = (\opcode[2]~input_o\ & (((\opcode[0]~input_o\)))) # (!\opcode[2]~input_o\ & ((\opcode[0]~input_o\ & (\inst2|output[0]~7_combout\)) # (!\opcode[0]~input_o\ & ((\inst5|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[0]~7_combout\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \inst5|Add1~0_combout\,
	combout => \inst5|Mux7~8_combout\);

-- Location: LCCOMB_X14_Y22_N16
\inst5|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~9_combout\ = (\opcode[2]~input_o\ & ((\inst5|Mux7~8_combout\ & ((\inst5|Mux7~15_combout\))) # (!\inst5|Mux7~8_combout\ & (\inst5|Mux7~7_combout\)))) # (!\opcode[2]~input_o\ & ((\inst5|Mux7~7_combout\ & (\inst5|Mux7~8_combout\)) # 
-- (!\inst5|Mux7~7_combout\ & ((\inst5|Mux7~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux7~7_combout\,
	datab => \opcode[2]~input_o\,
	datac => \inst5|Mux7~8_combout\,
	datad => \inst5|Mux7~15_combout\,
	combout => \inst5|Mux7~9_combout\);

-- Location: LCCOMB_X14_Y22_N18
\inst5|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~10_combout\ = (\opcode[3]~input_o\ & (\opcode[1]~input_o\)) # (!\opcode[3]~input_o\ & ((\opcode[1]~input_o\ & (\inst5|Mux7~6_combout\)) # (!\opcode[1]~input_o\ & ((\inst5|Mux7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \inst5|Mux7~6_combout\,
	datad => \inst5|Mux7~9_combout\,
	combout => \inst5|Mux7~10_combout\);

-- Location: LCCOMB_X14_Y22_N10
\inst5|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~15_combout\ = (\opcode[3]~input_o\ & ((\inst5|Mux7~10_combout\ & (\inst5|Mux7~14_combout\)) # (!\inst5|Mux7~10_combout\ & ((\inst5|Mux7~4_combout\))))) # (!\opcode[3]~input_o\ & (((\inst5|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \inst5|Mux7~14_combout\,
	datac => \inst5|Mux7~4_combout\,
	datad => \inst5|Mux7~10_combout\,
	combout => \inst5|Mux7~15_combout\);

-- Location: LCCOMB_X14_Y22_N28
\inst3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = (\mux2sel[1]~input_o\ & (((\mux2sel[0]~input_o\) # (\from_memory[0]~input_o\)))) # (!\mux2sel[1]~input_o\ & (\inst5|Mux7~15_combout\ & (!\mux2sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux7~15_combout\,
	datab => \mux2sel[1]~input_o\,
	datac => \mux2sel[0]~input_o\,
	datad => \from_memory[0]~input_o\,
	combout => \inst3|Mux7~0_combout\);

-- Location: IOIBUF_X16_Y24_N8
\zero[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero(0),
	o => \zero[0]~input_o\);

-- Location: LCCOMB_X13_Y22_N28
\inst3|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = (\inst3|Mux7~0_combout\ & (((\zero[0]~input_o\) # (!\mux2sel[0]~input_o\)))) # (!\inst3|Mux7~0_combout\ & (\from_cu[0]~input_o\ & (\mux2sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[0]~input_o\,
	datab => \inst3|Mux7~0_combout\,
	datac => \mux2sel[0]~input_o\,
	datad => \zero[0]~input_o\,
	combout => \inst3|Mux7~1_combout\);

-- Location: IOIBUF_X7_Y24_N8
\accload~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accload,
	o => \accload~input_o\);

-- Location: FF_X13_Y22_N29
\inst6|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux7~1_combout\,
	ena => \accload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|output\(0));

-- Location: LCCOMB_X13_Y22_N6
\inst1|output[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[0]~7_combout\ = (\ALUinSel~input_o\ & (\inst|output[0]~7_combout\)) # (!\ALUinSel~input_o\ & ((\inst6|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[0]~7_combout\,
	datab => \ALUinSel~input_o\,
	datad => \inst6|output\(0),
	combout => \inst1|output[0]~7_combout\);

-- Location: LCCOMB_X12_Y19_N2
\inst5|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~2_combout\ = (\inst2|output[1]~6_combout\ & ((\inst1|output[1]~6_combout\ & (!\inst5|Add1~1\)) # (!\inst1|output[1]~6_combout\ & (\inst5|Add1~1\ & VCC)))) # (!\inst2|output[1]~6_combout\ & ((\inst1|output[1]~6_combout\ & ((\inst5|Add1~1\) # 
-- (GND))) # (!\inst1|output[1]~6_combout\ & (!\inst5|Add1~1\))))
-- \inst5|Add1~3\ = CARRY((\inst2|output[1]~6_combout\ & (\inst1|output[1]~6_combout\ & !\inst5|Add1~1\)) # (!\inst2|output[1]~6_combout\ & ((\inst1|output[1]~6_combout\) # (!\inst5|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[1]~6_combout\,
	datab => \inst1|output[1]~6_combout\,
	datad => VCC,
	cin => \inst5|Add1~1\,
	combout => \inst5|Add1~2_combout\,
	cout => \inst5|Add1~3\);

-- Location: LCCOMB_X13_Y19_N22
\inst2|output[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[2]~5_combout\ = (\ALUinSel~input_o\ & ((\inst6|output\(2)))) # (!\ALUinSel~input_o\ & (\inst|output[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUinSel~input_o\,
	datac => \inst|output[2]~5_combout\,
	datad => \inst6|output\(2),
	combout => \inst2|output[2]~5_combout\);

-- Location: LCCOMB_X13_Y21_N4
\inst5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\opcode[2]~input_o\ & (((\inst2|output[2]~5_combout\) # (\inst5|Mux1~1_combout\)))) # (!\opcode[2]~input_o\ & (\inst5|Add1~2_combout\ & ((!\inst5|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \inst5|Add1~2_combout\,
	datac => \inst2|output[2]~5_combout\,
	datad => \inst5|Mux1~1_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y19_N6
\inst5|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~1_combout\ = (\inst5|Mux6~0_combout\ & ((\inst5|temp~26_combout\) # ((!\inst5|Mux1~1_combout\)))) # (!\inst5|Mux6~0_combout\ & (((\inst5|Mux1~1_combout\ & !\inst2|output[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~26_combout\,
	datab => \inst5|Mux6~0_combout\,
	datac => \inst5|Mux1~1_combout\,
	datad => \inst2|output[1]~6_combout\,
	combout => \inst5|Mux6~1_combout\);

-- Location: LCCOMB_X13_Y22_N14
\inst5|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~2_combout\ = (\inst2|output[1]~6_combout\ & (\inst5|Add2~1\ & VCC)) # (!\inst2|output[1]~6_combout\ & (!\inst5|Add2~1\))
-- \inst5|Add2~3\ = CARRY((!\inst2|output[1]~6_combout\ & !\inst5|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[1]~6_combout\,
	datad => VCC,
	cin => \inst5|Add2~1\,
	combout => \inst5|Add2~2_combout\,
	cout => \inst5|Add2~3\);

-- Location: LCCOMB_X13_Y18_N14
\inst5|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~2_combout\ = (\inst2|output[1]~6_combout\ & (!\inst5|Add3~1\)) # (!\inst2|output[1]~6_combout\ & ((\inst5|Add3~1\) # (GND)))
-- \inst5|Add3~3\ = CARRY((!\inst5|Add3~1\) # (!\inst2|output[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[1]~6_combout\,
	datad => VCC,
	cin => \inst5|Add3~1\,
	combout => \inst5|Add3~2_combout\,
	cout => \inst5|Add3~3\);

-- Location: LCCOMB_X12_Y18_N6
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst2|output[1]~6_combout\ & ((\inst1|output[1]~6_combout\ & (\inst5|Add0~1\ & VCC)) # (!\inst1|output[1]~6_combout\ & (!\inst5|Add0~1\)))) # (!\inst2|output[1]~6_combout\ & ((\inst1|output[1]~6_combout\ & (!\inst5|Add0~1\)) # 
-- (!\inst1|output[1]~6_combout\ & ((\inst5|Add0~1\) # (GND)))))
-- \inst5|Add0~3\ = CARRY((\inst2|output[1]~6_combout\ & (!\inst1|output[1]~6_combout\ & !\inst5|Add0~1\)) # (!\inst2|output[1]~6_combout\ & ((!\inst5|Add0~1\) # (!\inst1|output[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[1]~6_combout\,
	datab => \inst1|output[1]~6_combout\,
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X14_Y18_N6
\inst5|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~8_combout\ = (\opcode[1]~input_o\ & ((\opcode[0]~input_o\) # ((\opcode[2]~input_o\) # (\opcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[4]~input_o\,
	combout => \inst5|Mux1~8_combout\);

-- Location: LCCOMB_X14_Y18_N16
\inst5|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~3_combout\ = (\inst5|Mux1~7_combout\ & ((\inst5|Mux1~8_combout\ & ((\inst5|Add0~2_combout\))) # (!\inst5|Mux1~8_combout\ & (\inst5|Add3~2_combout\)))) # (!\inst5|Mux1~7_combout\ & (((!\inst5|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~2_combout\,
	datab => \inst5|Add0~2_combout\,
	datac => \inst5|Mux1~7_combout\,
	datad => \inst5|Mux1~8_combout\,
	combout => \inst5|Mux6~3_combout\);

-- Location: LCCOMB_X13_Y19_N28
\inst5|temp~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~27_combout\ = (\inst6|output\(1)) # ((\mux1sel~input_o\ & (\from_memory[1]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_memory[1]~input_o\,
	datac => \from_cu[1]~input_o\,
	datad => \inst6|output\(1),
	combout => \inst5|temp~27_combout\);

-- Location: LCCOMB_X14_Y18_N24
\inst5|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~6_combout\ = (\opcode[0]~input_o\) # ((\opcode[2]~input_o\) # (!\opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \inst5|Mux1~6_combout\);

-- Location: LCCOMB_X14_Y18_N2
\inst5|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~4_combout\ = (\inst5|Mux6~3_combout\ & ((\inst5|Add2~2_combout\) # ((\inst5|Mux1~6_combout\)))) # (!\inst5|Mux6~3_combout\ & (((\inst5|temp~27_combout\ & !\inst5|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~2_combout\,
	datab => \inst5|Mux6~3_combout\,
	datac => \inst5|temp~27_combout\,
	datad => \inst5|Mux1~6_combout\,
	combout => \inst5|Mux6~4_combout\);

-- Location: LCCOMB_X11_Y19_N22
\inst5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\opcode[3]~input_o\ & ((\opcode[4]~input_o\) # ((\opcode[1]~input_o\) # (\opcode[2]~input_o\))))

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
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y19_N26
\inst5|temp~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~35_combout\ = \inst6|output\(1) $ (((\mux1sel~input_o\ & (\from_memory[1]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_memory[1]~input_o\,
	datac => \from_cu[1]~input_o\,
	datad => \inst6|output\(1),
	combout => \inst5|temp~35_combout\);

-- Location: LCCOMB_X14_Y18_N22
\inst5|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~2_combout\ = (\inst5|Mux1~4_combout\ & (((\inst5|Mux1~0_combout\)))) # (!\inst5|Mux1~4_combout\ & ((\inst5|Mux1~0_combout\ & ((\inst5|temp~35_combout\))) # (!\inst5|Mux1~0_combout\ & (\inst2|output[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[0]~7_combout\,
	datab => \inst5|Mux1~4_combout\,
	datac => \inst5|Mux1~0_combout\,
	datad => \inst5|temp~35_combout\,
	combout => \inst5|Mux6~2_combout\);

-- Location: LCCOMB_X16_Y18_N8
\inst5|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~5_combout\ = (\inst5|Mux1~4_combout\ & ((\inst5|Mux6~2_combout\ & ((\inst5|Mux6~4_combout\))) # (!\inst5|Mux6~2_combout\ & (\inst5|Mux6~1_combout\)))) # (!\inst5|Mux1~4_combout\ & (((\inst5|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux6~1_combout\,
	datab => \inst5|Mux6~4_combout\,
	datac => \inst5|Mux1~4_combout\,
	datad => \inst5|Mux6~2_combout\,
	combout => \inst5|Mux6~5_combout\);

-- Location: LCCOMB_X11_Y18_N30
\inst5|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~6_combout\ = (!\inst5|Mux1~15_combout\ & ((\inst5|Mux1~12_combout\ & (\inst2|output[1]~6_combout\)) # (!\inst5|Mux1~12_combout\ & ((\inst5|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[1]~6_combout\,
	datab => \inst5|Mux1~12_combout\,
	datac => \inst5|Mux1~15_combout\,
	datad => \inst5|Mux6~5_combout\,
	combout => \inst5|Mux6~6_combout\);

-- Location: LCCOMB_X11_Y18_N8
\inst5|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~7_combout\ = (\inst5|Mux6~6_combout\) # ((\inst5|Mux6~7_combout\ & \inst5|Mux1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux6~6_combout\,
	datab => \inst5|Mux6~7_combout\,
	datac => \inst5|Mux1~15_combout\,
	combout => \inst5|Mux6~7_combout\);

-- Location: LCCOMB_X11_Y18_N14
\inst3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\mux2sel[0]~input_o\ & (((\mux2sel[1]~input_o\) # (\from_cu[1]~input_o\)))) # (!\mux2sel[0]~input_o\ & (\inst5|Mux6~7_combout\ & (!\mux2sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux6~7_combout\,
	datab => \mux2sel[0]~input_o\,
	datac => \mux2sel[1]~input_o\,
	datad => \from_cu[1]~input_o\,
	combout => \inst3|Mux6~0_combout\);

-- Location: IOIBUF_X7_Y0_N1
\zero[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero(1),
	o => \zero[1]~input_o\);

-- Location: LCCOMB_X10_Y18_N0
\inst3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~1_combout\ = (\mux2sel[1]~input_o\ & ((\inst3|Mux6~0_combout\ & (\zero[1]~input_o\)) # (!\inst3|Mux6~0_combout\ & ((\from_memory[1]~input_o\))))) # (!\mux2sel[1]~input_o\ & (\inst3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2sel[1]~input_o\,
	datab => \inst3|Mux6~0_combout\,
	datac => \zero[1]~input_o\,
	datad => \from_memory[1]~input_o\,
	combout => \inst3|Mux6~1_combout\);

-- Location: FF_X13_Y19_N11
\inst6|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst3|Mux6~1_combout\,
	sload => VCC,
	ena => \accload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|output\(1));

-- Location: LCCOMB_X13_Y19_N30
\inst2|output[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[1]~6_combout\ = (\ALUinSel~input_o\ & ((\inst6|output\(1)))) # (!\ALUinSel~input_o\ & (\inst|output[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUinSel~input_o\,
	datac => \inst|output[1]~6_combout\,
	datad => \inst6|output\(1),
	combout => \inst2|output[1]~6_combout\);

-- Location: LCCOMB_X12_Y19_N4
\inst5|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~4_combout\ = ((\inst1|output[2]~5_combout\ $ (\inst2|output[2]~5_combout\ $ (\inst5|Add1~3\)))) # (GND)
-- \inst5|Add1~5\ = CARRY((\inst1|output[2]~5_combout\ & (\inst2|output[2]~5_combout\ & !\inst5|Add1~3\)) # (!\inst1|output[2]~5_combout\ & ((\inst2|output[2]~5_combout\) # (!\inst5|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[2]~5_combout\,
	datab => \inst2|output[2]~5_combout\,
	datad => VCC,
	cin => \inst5|Add1~3\,
	combout => \inst5|Add1~4_combout\,
	cout => \inst5|Add1~5\);

-- Location: LCCOMB_X11_Y19_N10
\inst5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst5|Mux1~1_combout\ & (((\opcode[2]~input_o\)))) # (!\inst5|Mux1~1_combout\ & ((\opcode[2]~input_o\ & ((\inst2|output[3]~4_combout\))) # (!\opcode[2]~input_o\ & (\inst5|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~4_combout\,
	datab => \inst5|Mux1~1_combout\,
	datac => \inst2|output[3]~4_combout\,
	datad => \opcode[2]~input_o\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y19_N14
\inst5|temp~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~24_combout\ = (\inst6|output\(2) & ((\mux1sel~input_o\ & (\from_memory[2]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_memory[2]~input_o\,
	datac => \from_cu[2]~input_o\,
	datad => \inst6|output\(2),
	combout => \inst5|temp~24_combout\);

-- Location: LCCOMB_X13_Y19_N16
\inst5|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~1_combout\ = (\inst5|Mux5~0_combout\ & ((\inst5|temp~24_combout\) # ((!\inst5|Mux1~1_combout\)))) # (!\inst5|Mux5~0_combout\ & (((\inst5|Mux1~1_combout\ & !\inst2|output[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux5~0_combout\,
	datab => \inst5|temp~24_combout\,
	datac => \inst5|Mux1~1_combout\,
	datad => \inst2|output[2]~5_combout\,
	combout => \inst5|Mux5~1_combout\);

-- Location: LCCOMB_X11_Y19_N20
\inst5|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~2_combout\ = (\inst5|Mux1~4_combout\ & (((\inst5|Mux1~0_combout\) # (\inst5|Mux5~1_combout\)))) # (!\inst5|Mux1~4_combout\ & (\inst2|output[1]~6_combout\ & (!\inst5|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~4_combout\,
	datab => \inst2|output[1]~6_combout\,
	datac => \inst5|Mux1~0_combout\,
	datad => \inst5|Mux5~1_combout\,
	combout => \inst5|Mux5~2_combout\);

-- Location: LCCOMB_X13_Y18_N16
\inst5|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~4_combout\ = (\inst2|output[2]~5_combout\ & (\inst5|Add3~3\ $ (GND))) # (!\inst2|output[2]~5_combout\ & (!\inst5|Add3~3\ & VCC))
-- \inst5|Add3~5\ = CARRY((\inst2|output[2]~5_combout\ & !\inst5|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[2]~5_combout\,
	datad => VCC,
	cin => \inst5|Add3~3\,
	combout => \inst5|Add3~4_combout\,
	cout => \inst5|Add3~5\);

-- Location: LCCOMB_X12_Y18_N8
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = ((\inst2|output[2]~5_combout\ $ (\inst1|output[2]~5_combout\ $ (!\inst5|Add0~3\)))) # (GND)
-- \inst5|Add0~5\ = CARRY((\inst2|output[2]~5_combout\ & ((\inst1|output[2]~5_combout\) # (!\inst5|Add0~3\))) # (!\inst2|output[2]~5_combout\ & (\inst1|output[2]~5_combout\ & !\inst5|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[2]~5_combout\,
	datab => \inst1|output[2]~5_combout\,
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X14_Y18_N10
\inst5|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~3_combout\ = (\inst5|Mux1~8_combout\ & (((\inst5|Mux1~7_combout\ & \inst5|Add0~4_combout\)))) # (!\inst5|Mux1~8_combout\ & ((\inst5|Add3~4_combout\) # ((!\inst5|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~8_combout\,
	datab => \inst5|Add3~4_combout\,
	datac => \inst5|Mux1~7_combout\,
	datad => \inst5|Add0~4_combout\,
	combout => \inst5|Mux5~3_combout\);

-- Location: LCCOMB_X13_Y19_N2
\inst5|temp~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~25_combout\ = (\inst6|output\(2)) # ((\mux1sel~input_o\ & (\from_memory[2]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \from_memory[2]~input_o\,
	datac => \from_cu[2]~input_o\,
	datad => \inst6|output\(2),
	combout => \inst5|temp~25_combout\);

-- Location: LCCOMB_X13_Y22_N16
\inst5|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~4_combout\ = (\inst2|output[2]~5_combout\ & ((GND) # (!\inst5|Add2~3\))) # (!\inst2|output[2]~5_combout\ & (\inst5|Add2~3\ $ (GND)))
-- \inst5|Add2~5\ = CARRY((\inst2|output[2]~5_combout\) # (!\inst5|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output[2]~5_combout\,
	datad => VCC,
	cin => \inst5|Add2~3\,
	combout => \inst5|Add2~4_combout\,
	cout => \inst5|Add2~5\);

-- Location: LCCOMB_X14_Y18_N4
\inst5|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~4_combout\ = (\inst5|Mux5~3_combout\ & (((\inst5|Add2~4_combout\) # (\inst5|Mux1~6_combout\)))) # (!\inst5|Mux5~3_combout\ & (\inst5|temp~25_combout\ & ((!\inst5|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux5~3_combout\,
	datab => \inst5|temp~25_combout\,
	datac => \inst5|Add2~4_combout\,
	datad => \inst5|Mux1~6_combout\,
	combout => \inst5|Mux5~4_combout\);

-- Location: LCCOMB_X10_Y18_N12
\inst5|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~5_combout\ = (\inst5|Mux5~2_combout\ & (((\inst5|Mux5~4_combout\) # (!\inst5|Mux1~0_combout\)))) # (!\inst5|Mux5~2_combout\ & (\inst5|temp~34_combout\ & ((\inst5|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~34_combout\,
	datab => \inst5|Mux5~2_combout\,
	datac => \inst5|Mux5~4_combout\,
	datad => \inst5|Mux1~0_combout\,
	combout => \inst5|Mux5~5_combout\);

-- Location: LCCOMB_X11_Y18_N22
\inst5|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~6_combout\ = (!\inst5|Mux1~15_combout\ & ((\inst5|Mux1~12_combout\ & ((\inst2|output[2]~5_combout\))) # (!\inst5|Mux1~12_combout\ & (\inst5|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux5~5_combout\,
	datab => \inst2|output[2]~5_combout\,
	datac => \inst5|Mux1~15_combout\,
	datad => \inst5|Mux1~12_combout\,
	combout => \inst5|Mux5~6_combout\);

-- Location: LCCOMB_X11_Y18_N24
\inst5|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~7_combout\ = (\inst5|Mux5~6_combout\) # ((\inst5|Mux1~15_combout\ & \inst5|Mux5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux5~6_combout\,
	datab => \inst5|Mux1~15_combout\,
	datad => \inst5|Mux5~7_combout\,
	combout => \inst5|Mux5~7_combout\);

-- Location: LCCOMB_X11_Y18_N18
\inst3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\mux2sel[0]~input_o\ & (((\mux2sel[1]~input_o\)))) # (!\mux2sel[0]~input_o\ & ((\mux2sel[1]~input_o\ & (\from_memory[2]~input_o\)) # (!\mux2sel[1]~input_o\ & ((\inst5|Mux5~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[2]~input_o\,
	datab => \mux2sel[0]~input_o\,
	datac => \mux2sel[1]~input_o\,
	datad => \inst5|Mux5~7_combout\,
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y18_N4
\inst3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~1_combout\ = (\mux2sel[0]~input_o\ & ((\inst3|Mux5~0_combout\ & ((\zero[2]~input_o\))) # (!\inst3|Mux5~0_combout\ & (\from_cu[2]~input_o\)))) # (!\mux2sel[0]~input_o\ & (((\inst3|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[2]~input_o\,
	datab => \mux2sel[0]~input_o\,
	datac => \zero[2]~input_o\,
	datad => \inst3|Mux5~0_combout\,
	combout => \inst3|Mux5~1_combout\);

-- Location: FF_X13_Y19_N25
\inst6|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst3|Mux5~1_combout\,
	sload => VCC,
	ena => \accload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|output\(2));

-- Location: LCCOMB_X13_Y19_N20
\inst1|output[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[2]~5_combout\ = (\ALUinSel~input_o\ & (\inst|output[2]~5_combout\)) # (!\ALUinSel~input_o\ & ((\inst6|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUinSel~input_o\,
	datac => \inst|output[2]~5_combout\,
	datad => \inst6|output\(2),
	combout => \inst1|output[2]~5_combout\);

-- Location: LCCOMB_X12_Y19_N6
\inst5|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~6_combout\ = (\inst1|output[3]~4_combout\ & ((\inst2|output[3]~4_combout\ & (!\inst5|Add1~5\)) # (!\inst2|output[3]~4_combout\ & ((\inst5|Add1~5\) # (GND))))) # (!\inst1|output[3]~4_combout\ & ((\inst2|output[3]~4_combout\ & (\inst5|Add1~5\ & 
-- VCC)) # (!\inst2|output[3]~4_combout\ & (!\inst5|Add1~5\))))
-- \inst5|Add1~7\ = CARRY((\inst1|output[3]~4_combout\ & ((!\inst5|Add1~5\) # (!\inst2|output[3]~4_combout\))) # (!\inst1|output[3]~4_combout\ & (!\inst2|output[3]~4_combout\ & !\inst5|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[3]~4_combout\,
	datab => \inst2|output[3]~4_combout\,
	datad => VCC,
	cin => \inst5|Add1~5\,
	combout => \inst5|Add1~6_combout\,
	cout => \inst5|Add1~7\);

-- Location: LCCOMB_X12_Y22_N14
\inst5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst5|Mux1~1_combout\ & (((\opcode[2]~input_o\)))) # (!\inst5|Mux1~1_combout\ & ((\opcode[2]~input_o\ & ((\inst2|output[4]~3_combout\))) # (!\opcode[2]~input_o\ & (\inst5|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~1_combout\,
	datab => \inst5|Add1~6_combout\,
	datac => \opcode[2]~input_o\,
	datad => \inst2|output[4]~3_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y22_N30
\inst5|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~1_combout\ = (\inst5|Mux4~0_combout\ & ((\inst5|temp~22_combout\) # ((!\inst5|Mux1~1_combout\)))) # (!\inst5|Mux4~0_combout\ & (((!\inst2|output[3]~4_combout\ & \inst5|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~22_combout\,
	datab => \inst2|output[3]~4_combout\,
	datac => \inst5|Mux4~0_combout\,
	datad => \inst5|Mux1~1_combout\,
	combout => \inst5|Mux4~1_combout\);

-- Location: LCCOMB_X12_Y22_N18
\inst5|temp~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~33_combout\ = \inst6|output\(3) $ (((\mux1sel~input_o\ & ((\from_memory[3]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[3]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \inst6|output\(3),
	datad => \from_memory[3]~input_o\,
	combout => \inst5|temp~33_combout\);

-- Location: LCCOMB_X12_Y22_N8
\inst5|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~2_combout\ = (\inst5|Mux1~0_combout\ & (((\inst5|Mux1~4_combout\) # (\inst5|temp~33_combout\)))) # (!\inst5|Mux1~0_combout\ & (\inst2|output[2]~5_combout\ & (!\inst5|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~0_combout\,
	datab => \inst2|output[2]~5_combout\,
	datac => \inst5|Mux1~4_combout\,
	datad => \inst5|temp~33_combout\,
	combout => \inst5|Mux4~2_combout\);

-- Location: LCCOMB_X12_Y22_N22
\inst5|temp~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~23_combout\ = (\inst6|output\(3)) # ((\mux1sel~input_o\ & ((\from_memory[3]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[3]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \inst6|output\(3),
	datad => \from_memory[3]~input_o\,
	combout => \inst5|temp~23_combout\);

-- Location: LCCOMB_X13_Y22_N18
\inst5|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~6_combout\ = (\inst2|output[3]~4_combout\ & (\inst5|Add2~5\ & VCC)) # (!\inst2|output[3]~4_combout\ & (!\inst5|Add2~5\))
-- \inst5|Add2~7\ = CARRY((!\inst2|output[3]~4_combout\ & !\inst5|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[3]~4_combout\,
	datad => VCC,
	cin => \inst5|Add2~5\,
	combout => \inst5|Add2~6_combout\,
	cout => \inst5|Add2~7\);

-- Location: LCCOMB_X13_Y18_N18
\inst5|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~6_combout\ = (\inst2|output[3]~4_combout\ & (!\inst5|Add3~5\)) # (!\inst2|output[3]~4_combout\ & ((\inst5|Add3~5\) # (GND)))
-- \inst5|Add3~7\ = CARRY((!\inst5|Add3~5\) # (!\inst2|output[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[3]~4_combout\,
	datad => VCC,
	cin => \inst5|Add3~5\,
	combout => \inst5|Add3~6_combout\,
	cout => \inst5|Add3~7\);

-- Location: LCCOMB_X12_Y18_N10
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst2|output[3]~4_combout\ & ((\inst1|output[3]~4_combout\ & (\inst5|Add0~5\ & VCC)) # (!\inst1|output[3]~4_combout\ & (!\inst5|Add0~5\)))) # (!\inst2|output[3]~4_combout\ & ((\inst1|output[3]~4_combout\ & (!\inst5|Add0~5\)) # 
-- (!\inst1|output[3]~4_combout\ & ((\inst5|Add0~5\) # (GND)))))
-- \inst5|Add0~7\ = CARRY((\inst2|output[3]~4_combout\ & (!\inst1|output[3]~4_combout\ & !\inst5|Add0~5\)) # (!\inst2|output[3]~4_combout\ & ((!\inst5|Add0~5\) # (!\inst1|output[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[3]~4_combout\,
	datab => \inst1|output[3]~4_combout\,
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X13_Y21_N18
\inst5|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~3_combout\ = (\inst5|Mux1~7_combout\ & ((\inst5|Mux1~8_combout\ & ((\inst5|Add0~6_combout\))) # (!\inst5|Mux1~8_combout\ & (\inst5|Add3~6_combout\)))) # (!\inst5|Mux1~7_combout\ & (((!\inst5|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~6_combout\,
	datab => \inst5|Mux1~7_combout\,
	datac => \inst5|Add0~6_combout\,
	datad => \inst5|Mux1~8_combout\,
	combout => \inst5|Mux4~3_combout\);

-- Location: LCCOMB_X12_Y22_N20
\inst5|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~4_combout\ = (\inst5|Mux1~6_combout\ & (((\inst5|Mux4~3_combout\)))) # (!\inst5|Mux1~6_combout\ & ((\inst5|Mux4~3_combout\ & ((\inst5|Add2~6_combout\))) # (!\inst5|Mux4~3_combout\ & (\inst5|temp~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~23_combout\,
	datab => \inst5|Mux1~6_combout\,
	datac => \inst5|Add2~6_combout\,
	datad => \inst5|Mux4~3_combout\,
	combout => \inst5|Mux4~4_combout\);

-- Location: LCCOMB_X12_Y22_N10
\inst5|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~5_combout\ = (\inst5|Mux4~2_combout\ & (((\inst5|Mux4~4_combout\) # (!\inst5|Mux1~4_combout\)))) # (!\inst5|Mux4~2_combout\ & (\inst5|Mux4~1_combout\ & (\inst5|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux4~1_combout\,
	datab => \inst5|Mux4~2_combout\,
	datac => \inst5|Mux1~4_combout\,
	datad => \inst5|Mux4~4_combout\,
	combout => \inst5|Mux4~5_combout\);

-- Location: LCCOMB_X12_Y22_N4
\inst5|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~6_combout\ = (!\inst5|Mux1~15_combout\ & ((\inst5|Mux1~12_combout\ & ((\inst2|output[3]~4_combout\))) # (!\inst5|Mux1~12_combout\ & (\inst5|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux4~5_combout\,
	datab => \inst2|output[3]~4_combout\,
	datac => \inst5|Mux1~15_combout\,
	datad => \inst5|Mux1~12_combout\,
	combout => \inst5|Mux4~6_combout\);

-- Location: LCCOMB_X13_Y19_N12
\inst5|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~7_combout\ = (\inst5|Mux4~6_combout\) # ((\inst5|Mux1~15_combout\ & \inst5|Mux4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~15_combout\,
	datac => \inst5|Mux4~6_combout\,
	datad => \inst5|Mux4~7_combout\,
	combout => \inst5|Mux4~7_combout\);

-- Location: LCCOMB_X12_Y22_N24
\inst3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\mux2sel[1]~input_o\ & (((\mux2sel[0]~input_o\)))) # (!\mux2sel[1]~input_o\ & ((\mux2sel[0]~input_o\ & ((\from_cu[3]~input_o\))) # (!\mux2sel[0]~input_o\ & (\inst5|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2sel[1]~input_o\,
	datab => \inst5|Mux4~7_combout\,
	datac => \from_cu[3]~input_o\,
	datad => \mux2sel[0]~input_o\,
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y22_N26
\inst3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~1_combout\ = (\mux2sel[1]~input_o\ & ((\inst3|Mux4~0_combout\ & (\zero[3]~input_o\)) # (!\inst3|Mux4~0_combout\ & ((\from_memory[3]~input_o\))))) # (!\mux2sel[1]~input_o\ & (((\inst3|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2sel[1]~input_o\,
	datab => \zero[3]~input_o\,
	datac => \from_memory[3]~input_o\,
	datad => \inst3|Mux4~0_combout\,
	combout => \inst3|Mux4~1_combout\);

-- Location: FF_X12_Y18_N31
\inst6|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst3|Mux4~1_combout\,
	sload => VCC,
	ena => \accload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|output\(3));

-- Location: LCCOMB_X12_Y18_N26
\inst2|output[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[3]~4_combout\ = (\ALUinSel~input_o\ & (\inst6|output\(3))) # (!\ALUinSel~input_o\ & ((\inst|output[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUinSel~input_o\,
	datac => \inst6|output\(3),
	datad => \inst|output[3]~4_combout\,
	combout => \inst2|output[3]~4_combout\);

-- Location: IOIBUF_X13_Y0_N1
\from_memory[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_from_memory(4),
	o => \from_memory[4]~input_o\);

-- Location: LCCOMB_X11_Y18_N28
\inst|output[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|output[4]~3_combout\ = (\mux1sel~input_o\ & ((\from_memory[4]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datac => \from_cu[4]~input_o\,
	datad => \from_memory[4]~input_o\,
	combout => \inst|output[4]~3_combout\);

-- Location: LCCOMB_X12_Y18_N24
\inst1|output[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[4]~3_combout\ = (\ALUinSel~input_o\ & (\inst|output[4]~3_combout\)) # (!\ALUinSel~input_o\ & ((\inst6|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUinSel~input_o\,
	datab => \inst|output[4]~3_combout\,
	datad => \inst6|output\(4),
	combout => \inst1|output[4]~3_combout\);

-- Location: LCCOMB_X12_Y19_N8
\inst5|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~8_combout\ = ((\inst1|output[4]~3_combout\ $ (\inst2|output[4]~3_combout\ $ (\inst5|Add1~7\)))) # (GND)
-- \inst5|Add1~9\ = CARRY((\inst1|output[4]~3_combout\ & (\inst2|output[4]~3_combout\ & !\inst5|Add1~7\)) # (!\inst1|output[4]~3_combout\ & ((\inst2|output[4]~3_combout\) # (!\inst5|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[4]~3_combout\,
	datab => \inst2|output[4]~3_combout\,
	datad => VCC,
	cin => \inst5|Add1~7\,
	combout => \inst5|Add1~8_combout\,
	cout => \inst5|Add1~9\);

-- Location: LCCOMB_X11_Y19_N16
\inst5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\opcode[2]~input_o\ & ((\inst2|output[5]~2_combout\) # ((\inst5|Mux1~1_combout\)))) # (!\opcode[2]~input_o\ & (((\inst5|Add1~8_combout\ & !\inst5|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[5]~2_combout\,
	datab => \opcode[2]~input_o\,
	datac => \inst5|Add1~8_combout\,
	datad => \inst5|Mux1~1_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y18_N6
\inst5|temp~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~20_combout\ = (\inst6|output\(4) & ((\mux1sel~input_o\ & (\from_memory[4]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[4]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \inst6|output\(4),
	datad => \from_cu[4]~input_o\,
	combout => \inst5|temp~20_combout\);

-- Location: LCCOMB_X11_Y19_N2
\inst5|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~1_combout\ = (\inst5|Mux3~0_combout\ & ((\inst5|temp~20_combout\) # ((!\inst5|Mux1~1_combout\)))) # (!\inst5|Mux3~0_combout\ & (((!\inst2|output[4]~3_combout\ & \inst5|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~0_combout\,
	datab => \inst5|temp~20_combout\,
	datac => \inst2|output[4]~3_combout\,
	datad => \inst5|Mux1~1_combout\,
	combout => \inst5|Mux3~1_combout\);

-- Location: LCCOMB_X11_Y19_N24
\inst5|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~2_combout\ = (\inst5|Mux1~0_combout\ & (((\inst5|Mux1~4_combout\)))) # (!\inst5|Mux1~0_combout\ & ((\inst5|Mux1~4_combout\ & ((\inst5|Mux3~1_combout\))) # (!\inst5|Mux1~4_combout\ & (\inst2|output[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[3]~4_combout\,
	datab => \inst5|Mux3~1_combout\,
	datac => \inst5|Mux1~0_combout\,
	datad => \inst5|Mux1~4_combout\,
	combout => \inst5|Mux3~2_combout\);

-- Location: LCCOMB_X11_Y18_N12
\inst5|temp~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~32_combout\ = \inst6|output\(4) $ (((\mux1sel~input_o\ & ((\from_memory[4]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \inst6|output\(4),
	datac => \from_cu[4]~input_o\,
	datad => \from_memory[4]~input_o\,
	combout => \inst5|temp~32_combout\);

-- Location: LCCOMB_X13_Y22_N20
\inst5|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~8_combout\ = (\inst2|output[4]~3_combout\ & ((GND) # (!\inst5|Add2~7\))) # (!\inst2|output[4]~3_combout\ & (\inst5|Add2~7\ $ (GND)))
-- \inst5|Add2~9\ = CARRY((\inst2|output[4]~3_combout\) # (!\inst5|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[4]~3_combout\,
	datad => VCC,
	cin => \inst5|Add2~7\,
	combout => \inst5|Add2~8_combout\,
	cout => \inst5|Add2~9\);

-- Location: LCCOMB_X13_Y18_N20
\inst5|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~8_combout\ = (\inst2|output[4]~3_combout\ & (\inst5|Add3~7\ $ (GND))) # (!\inst2|output[4]~3_combout\ & (!\inst5|Add3~7\ & VCC))
-- \inst5|Add3~9\ = CARRY((\inst2|output[4]~3_combout\ & !\inst5|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[4]~3_combout\,
	datad => VCC,
	cin => \inst5|Add3~7\,
	combout => \inst5|Add3~8_combout\,
	cout => \inst5|Add3~9\);

-- Location: LCCOMB_X12_Y18_N12
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = ((\inst2|output[4]~3_combout\ $ (\inst1|output[4]~3_combout\ $ (!\inst5|Add0~7\)))) # (GND)
-- \inst5|Add0~9\ = CARRY((\inst2|output[4]~3_combout\ & ((\inst1|output[4]~3_combout\) # (!\inst5|Add0~7\))) # (!\inst2|output[4]~3_combout\ & (\inst1|output[4]~3_combout\ & !\inst5|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[4]~3_combout\,
	datab => \inst1|output[4]~3_combout\,
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X14_Y18_N30
\inst5|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~3_combout\ = (\inst5|Mux1~7_combout\ & ((\inst5|Mux1~8_combout\ & ((\inst5|Add0~8_combout\))) # (!\inst5|Mux1~8_combout\ & (\inst5|Add3~8_combout\)))) # (!\inst5|Mux1~7_combout\ & (((!\inst5|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~7_combout\,
	datab => \inst5|Add3~8_combout\,
	datac => \inst5|Add0~8_combout\,
	datad => \inst5|Mux1~8_combout\,
	combout => \inst5|Mux3~3_combout\);

-- Location: LCCOMB_X11_Y18_N20
\inst5|temp~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~21_combout\ = (\inst6|output\(4)) # ((\mux1sel~input_o\ & (\from_memory[4]~input_o\)) # (!\mux1sel~input_o\ & ((\from_cu[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory[4]~input_o\,
	datab => \inst6|output\(4),
	datac => \from_cu[4]~input_o\,
	datad => \mux1sel~input_o\,
	combout => \inst5|temp~21_combout\);

-- Location: LCCOMB_X14_Y18_N20
\inst5|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~4_combout\ = (\inst5|Mux1~6_combout\ & (((\inst5|Mux3~3_combout\)))) # (!\inst5|Mux1~6_combout\ & ((\inst5|Mux3~3_combout\ & (\inst5|Add2~8_combout\)) # (!\inst5|Mux3~3_combout\ & ((\inst5|temp~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~8_combout\,
	datab => \inst5|Mux1~6_combout\,
	datac => \inst5|Mux3~3_combout\,
	datad => \inst5|temp~21_combout\,
	combout => \inst5|Mux3~4_combout\);

-- Location: LCCOMB_X10_Y18_N18
\inst5|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~5_combout\ = (\inst5|Mux3~2_combout\ & (((\inst5|Mux3~4_combout\)) # (!\inst5|Mux1~0_combout\))) # (!\inst5|Mux3~2_combout\ & (\inst5|Mux1~0_combout\ & (\inst5|temp~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~2_combout\,
	datab => \inst5|Mux1~0_combout\,
	datac => \inst5|temp~32_combout\,
	datad => \inst5|Mux3~4_combout\,
	combout => \inst5|Mux3~5_combout\);

-- Location: LCCOMB_X10_Y18_N8
\inst5|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~6_combout\ = (!\inst5|Mux1~15_combout\ & ((\inst5|Mux1~12_combout\ & (\inst2|output[4]~3_combout\)) # (!\inst5|Mux1~12_combout\ & ((\inst5|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~12_combout\,
	datab => \inst2|output[4]~3_combout\,
	datac => \inst5|Mux3~5_combout\,
	datad => \inst5|Mux1~15_combout\,
	combout => \inst5|Mux3~6_combout\);

-- Location: LCCOMB_X10_Y18_N26
\inst5|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~7_combout\ = (\inst5|Mux3~6_combout\) # ((\inst5|Mux3~7_combout\ & \inst5|Mux1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~7_combout\,
	datac => \inst5|Mux3~6_combout\,
	datad => \inst5|Mux1~15_combout\,
	combout => \inst5|Mux3~7_combout\);

-- Location: LCCOMB_X11_Y17_N0
\inst3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\mux2sel[1]~input_o\ & (((\mux2sel[0]~input_o\) # (\from_memory[4]~input_o\)))) # (!\mux2sel[1]~input_o\ & (\inst5|Mux3~7_combout\ & (!\mux2sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux3~7_combout\,
	datab => \mux2sel[1]~input_o\,
	datac => \mux2sel[0]~input_o\,
	datad => \from_memory[4]~input_o\,
	combout => \inst3|Mux3~0_combout\);

-- Location: IOIBUF_X3_Y24_N22
\zero[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zero(4),
	o => \zero[4]~input_o\);

-- Location: LCCOMB_X11_Y18_N16
\inst3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~1_combout\ = (\inst3|Mux3~0_combout\ & (((\zero[4]~input_o\) # (!\mux2sel[0]~input_o\)))) # (!\inst3|Mux3~0_combout\ & (\from_cu[4]~input_o\ & ((\mux2sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[4]~input_o\,
	datab => \inst3|Mux3~0_combout\,
	datac => \zero[4]~input_o\,
	datad => \mux2sel[0]~input_o\,
	combout => \inst3|Mux3~1_combout\);

-- Location: FF_X12_Y18_N1
\inst6|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst3|Mux3~1_combout\,
	sload => VCC,
	ena => \accload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|output\(4));

-- Location: LCCOMB_X12_Y18_N0
\inst2|output[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[4]~3_combout\ = (\ALUinSel~input_o\ & (\inst6|output\(4))) # (!\ALUinSel~input_o\ & ((\inst|output[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUinSel~input_o\,
	datac => \inst6|output\(4),
	datad => \inst|output[4]~3_combout\,
	combout => \inst2|output[4]~3_combout\);

-- Location: LCCOMB_X12_Y18_N14
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst2|output[5]~2_combout\ & ((\inst1|output[5]~2_combout\ & (\inst5|Add0~9\ & VCC)) # (!\inst1|output[5]~2_combout\ & (!\inst5|Add0~9\)))) # (!\inst2|output[5]~2_combout\ & ((\inst1|output[5]~2_combout\ & (!\inst5|Add0~9\)) # 
-- (!\inst1|output[5]~2_combout\ & ((\inst5|Add0~9\) # (GND)))))
-- \inst5|Add0~11\ = CARRY((\inst2|output[5]~2_combout\ & (!\inst1|output[5]~2_combout\ & !\inst5|Add0~9\)) # (!\inst2|output[5]~2_combout\ & ((!\inst5|Add0~9\) # (!\inst1|output[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[5]~2_combout\,
	datab => \inst1|output[5]~2_combout\,
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X13_Y18_N22
\inst5|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~10_combout\ = (\inst2|output[5]~2_combout\ & (!\inst5|Add3~9\)) # (!\inst2|output[5]~2_combout\ & ((\inst5|Add3~9\) # (GND)))
-- \inst5|Add3~11\ = CARRY((!\inst5|Add3~9\) # (!\inst2|output[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output[5]~2_combout\,
	datad => VCC,
	cin => \inst5|Add3~9\,
	combout => \inst5|Add3~10_combout\,
	cout => \inst5|Add3~11\);

-- Location: LCCOMB_X13_Y21_N16
\inst5|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~3_combout\ = (\inst5|Mux1~7_combout\ & ((\inst5|Mux1~8_combout\ & (\inst5|Add0~10_combout\)) # (!\inst5|Mux1~8_combout\ & ((\inst5|Add3~10_combout\))))) # (!\inst5|Mux1~7_combout\ & (((!\inst5|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~10_combout\,
	datab => \inst5|Add3~10_combout\,
	datac => \inst5|Mux1~7_combout\,
	datad => \inst5|Mux1~8_combout\,
	combout => \inst5|Mux2~3_combout\);

-- Location: LCCOMB_X13_Y22_N22
\inst5|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~10_combout\ = (\inst2|output[5]~2_combout\ & (\inst5|Add2~9\ & VCC)) # (!\inst2|output[5]~2_combout\ & (!\inst5|Add2~9\))
-- \inst5|Add2~11\ = CARRY((!\inst2|output[5]~2_combout\ & !\inst5|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output[5]~2_combout\,
	datad => VCC,
	cin => \inst5|Add2~9\,
	combout => \inst5|Add2~10_combout\,
	cout => \inst5|Add2~11\);

-- Location: LCCOMB_X13_Y21_N30
\inst5|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~4_combout\ = (\inst5|Mux2~3_combout\ & (((\inst5|Add2~10_combout\) # (\inst5|Mux1~6_combout\)))) # (!\inst5|Mux2~3_combout\ & (\inst5|temp~19_combout\ & ((!\inst5|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~19_combout\,
	datab => \inst5|Mux2~3_combout\,
	datac => \inst5|Add2~10_combout\,
	datad => \inst5|Mux1~6_combout\,
	combout => \inst5|Mux2~4_combout\);

-- Location: LCCOMB_X12_Y20_N22
\inst5|temp~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~31_combout\ = \inst6|output\(5) $ (((\mux1sel~input_o\ & ((\from_memory[5]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[5]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \from_memory[5]~input_o\,
	datad => \inst6|output\(5),
	combout => \inst5|temp~31_combout\);

-- Location: LCCOMB_X11_Y19_N26
\inst5|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~2_combout\ = (\inst5|Mux1~0_combout\ & ((\inst5|temp~31_combout\) # ((\inst5|Mux1~4_combout\)))) # (!\inst5|Mux1~0_combout\ & (((\inst2|output[4]~3_combout\ & !\inst5|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~0_combout\,
	datab => \inst5|temp~31_combout\,
	datac => \inst2|output[4]~3_combout\,
	datad => \inst5|Mux1~4_combout\,
	combout => \inst5|Mux2~2_combout\);

-- Location: LCCOMB_X12_Y19_N10
\inst5|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~10_combout\ = (\inst1|output[5]~2_combout\ & ((\inst2|output[5]~2_combout\ & (!\inst5|Add1~9\)) # (!\inst2|output[5]~2_combout\ & ((\inst5|Add1~9\) # (GND))))) # (!\inst1|output[5]~2_combout\ & ((\inst2|output[5]~2_combout\ & (\inst5|Add1~9\ & 
-- VCC)) # (!\inst2|output[5]~2_combout\ & (!\inst5|Add1~9\))))
-- \inst5|Add1~11\ = CARRY((\inst1|output[5]~2_combout\ & ((!\inst5|Add1~9\) # (!\inst2|output[5]~2_combout\))) # (!\inst1|output[5]~2_combout\ & (!\inst2|output[5]~2_combout\ & !\inst5|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[5]~2_combout\,
	datab => \inst2|output[5]~2_combout\,
	datad => VCC,
	cin => \inst5|Add1~9\,
	combout => \inst5|Add1~10_combout\,
	cout => \inst5|Add1~11\);

-- Location: LCCOMB_X12_Y19_N16
\inst5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\opcode[2]~input_o\ & ((\inst2|output[6]~1_combout\) # ((\inst5|Mux1~1_combout\)))) # (!\opcode[2]~input_o\ & (((\inst5|Add1~10_combout\ & !\inst5|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \inst2|output[6]~1_combout\,
	datac => \inst5|Add1~10_combout\,
	datad => \inst5|Mux1~1_combout\,
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y20_N18
\inst5|temp~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~18_combout\ = (\inst6|output\(5) & ((\mux1sel~input_o\ & ((\from_memory[5]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[5]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \from_memory[5]~input_o\,
	datad => \inst6|output\(5),
	combout => \inst5|temp~18_combout\);

-- Location: LCCOMB_X13_Y21_N26
\inst5|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~1_combout\ = (\inst5|Mux2~0_combout\ & (((\inst5|temp~18_combout\)) # (!\inst5|Mux1~1_combout\))) # (!\inst5|Mux2~0_combout\ & (\inst5|Mux1~1_combout\ & ((!\inst2|output[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux2~0_combout\,
	datab => \inst5|Mux1~1_combout\,
	datac => \inst5|temp~18_combout\,
	datad => \inst2|output[5]~2_combout\,
	combout => \inst5|Mux2~1_combout\);

-- Location: LCCOMB_X13_Y21_N20
\inst5|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~5_combout\ = (\inst5|Mux2~2_combout\ & ((\inst5|Mux2~4_combout\) # ((!\inst5|Mux1~4_combout\)))) # (!\inst5|Mux2~2_combout\ & (((\inst5|Mux2~1_combout\ & \inst5|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux2~4_combout\,
	datab => \inst5|Mux2~2_combout\,
	datac => \inst5|Mux2~1_combout\,
	datad => \inst5|Mux1~4_combout\,
	combout => \inst5|Mux2~5_combout\);

-- Location: LCCOMB_X12_Y21_N22
\inst5|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~6_combout\ = (!\inst5|Mux1~15_combout\ & ((\inst5|Mux1~12_combout\ & ((\inst2|output[5]~2_combout\))) # (!\inst5|Mux1~12_combout\ & (\inst5|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~12_combout\,
	datab => \inst5|Mux1~15_combout\,
	datac => \inst5|Mux2~5_combout\,
	datad => \inst2|output[5]~2_combout\,
	combout => \inst5|Mux2~6_combout\);

-- Location: LCCOMB_X12_Y20_N2
\inst5|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~7_combout\ = (\inst5|Mux2~6_combout\) # ((\inst5|Mux2~7_combout\ & \inst5|Mux1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mux2~7_combout\,
	datac => \inst5|Mux2~6_combout\,
	datad => \inst5|Mux1~15_combout\,
	combout => \inst5|Mux2~7_combout\);

-- Location: LCCOMB_X12_Y20_N20
\inst3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~1_combout\ = (\mux2sel[1]~input_o\ & (((\inst3|Mux2~0_combout\)))) # (!\mux2sel[1]~input_o\ & ((\inst3|Mux2~0_combout\ & ((\inst5|Mux2~7_combout\))) # (!\inst3|Mux2~0_combout\ & (\from_cu[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[5]~input_o\,
	datab => \mux2sel[1]~input_o\,
	datac => \inst3|Mux2~0_combout\,
	datad => \inst5|Mux2~7_combout\,
	combout => \inst3|Mux2~1_combout\);

-- Location: FF_X12_Y20_N21
\inst6|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux2~1_combout\,
	ena => \accload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|output\(5));

-- Location: LCCOMB_X12_Y20_N16
\inst2|output[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[5]~2_combout\ = (\ALUinSel~input_o\ & ((\inst6|output\(5)))) # (!\ALUinSel~input_o\ & (\inst|output[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|output[5]~2_combout\,
	datac => \ALUinSel~input_o\,
	datad => \inst6|output\(5),
	combout => \inst2|output[5]~2_combout\);

-- Location: LCCOMB_X13_Y18_N24
\inst5|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~12_combout\ = (\inst2|output[6]~1_combout\ & (\inst5|Add3~11\ $ (GND))) # (!\inst2|output[6]~1_combout\ & (!\inst5|Add3~11\ & VCC))
-- \inst5|Add3~13\ = CARRY((\inst2|output[6]~1_combout\ & !\inst5|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output[6]~1_combout\,
	datad => VCC,
	cin => \inst5|Add3~11\,
	combout => \inst5|Add3~12_combout\,
	cout => \inst5|Add3~13\);

-- Location: LCCOMB_X12_Y21_N18
\inst1|output[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[6]~1_combout\ = (\ALUinSel~input_o\ & (\inst|output[6]~1_combout\)) # (!\ALUinSel~input_o\ & ((\inst6|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUinSel~input_o\,
	datac => \inst|output[6]~1_combout\,
	datad => \inst6|output\(6),
	combout => \inst1|output[6]~1_combout\);

-- Location: LCCOMB_X12_Y18_N16
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = ((\inst1|output[6]~1_combout\ $ (\inst2|output[6]~1_combout\ $ (!\inst5|Add0~11\)))) # (GND)
-- \inst5|Add0~13\ = CARRY((\inst1|output[6]~1_combout\ & ((\inst2|output[6]~1_combout\) # (!\inst5|Add0~11\))) # (!\inst1|output[6]~1_combout\ & (\inst2|output[6]~1_combout\ & !\inst5|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[6]~1_combout\,
	datab => \inst2|output[6]~1_combout\,
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X14_Y18_N12
\inst5|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~9_combout\ = (\inst5|Mux1~7_combout\ & ((\inst5|Mux1~8_combout\ & ((\inst5|Add0~12_combout\))) # (!\inst5|Mux1~8_combout\ & (\inst5|Add3~12_combout\)))) # (!\inst5|Mux1~7_combout\ & (((!\inst5|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~7_combout\,
	datab => \inst5|Add3~12_combout\,
	datac => \inst5|Add0~12_combout\,
	datad => \inst5|Mux1~8_combout\,
	combout => \inst5|Mux1~9_combout\);

-- Location: LCCOMB_X12_Y21_N14
\inst5|temp~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~17_combout\ = (\inst6|output\(6)) # ((\mux1sel~input_o\ & ((\from_memory[6]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[6]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \from_memory[6]~input_o\,
	datad => \inst6|output\(6),
	combout => \inst5|temp~17_combout\);

-- Location: LCCOMB_X13_Y22_N24
\inst5|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~12_combout\ = (\inst2|output[6]~1_combout\ & ((GND) # (!\inst5|Add2~11\))) # (!\inst2|output[6]~1_combout\ & (\inst5|Add2~11\ $ (GND)))
-- \inst5|Add2~13\ = CARRY((\inst2|output[6]~1_combout\) # (!\inst5|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output[6]~1_combout\,
	datad => VCC,
	cin => \inst5|Add2~11\,
	combout => \inst5|Add2~12_combout\,
	cout => \inst5|Add2~13\);

-- Location: LCCOMB_X14_Y18_N18
\inst5|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~10_combout\ = (\inst5|Mux1~9_combout\ & (((\inst5|Add2~12_combout\) # (\inst5|Mux1~6_combout\)))) # (!\inst5|Mux1~9_combout\ & (\inst5|temp~17_combout\ & ((!\inst5|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~9_combout\,
	datab => \inst5|temp~17_combout\,
	datac => \inst5|Add2~12_combout\,
	datad => \inst5|Mux1~6_combout\,
	combout => \inst5|Mux1~10_combout\);

-- Location: LCCOMB_X12_Y19_N12
\inst5|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~12_combout\ = ((\inst1|output[6]~1_combout\ $ (\inst2|output[6]~1_combout\ $ (\inst5|Add1~11\)))) # (GND)
-- \inst5|Add1~13\ = CARRY((\inst1|output[6]~1_combout\ & (\inst2|output[6]~1_combout\ & !\inst5|Add1~11\)) # (!\inst1|output[6]~1_combout\ & ((\inst2|output[6]~1_combout\) # (!\inst5|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[6]~1_combout\,
	datab => \inst2|output[6]~1_combout\,
	datad => VCC,
	cin => \inst5|Add1~11\,
	combout => \inst5|Add1~12_combout\,
	cout => \inst5|Add1~13\);

-- Location: LCCOMB_X12_Y21_N30
\inst5|temp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~16_combout\ = (\inst6|output\(6) & ((\mux1sel~input_o\ & ((\from_memory[6]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[6]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \from_memory[6]~input_o\,
	datad => \inst6|output\(6),
	combout => \inst5|temp~16_combout\);

-- Location: LCCOMB_X12_Y21_N0
\inst5|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~2_combout\ = (\inst5|Mux1~1_combout\ & (((\inst5|temp~16_combout\)) # (!\opcode[2]~input_o\))) # (!\inst5|Mux1~1_combout\ & (\opcode[2]~input_o\ & (\inst2|output[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~1_combout\,
	datab => \opcode[2]~input_o\,
	datac => \inst2|output[7]~0_combout\,
	datad => \inst5|temp~16_combout\,
	combout => \inst5|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y21_N6
\inst5|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~3_combout\ = (\inst5|Mux1~2_combout\ & (((\opcode[2]~input_o\) # (!\inst2|output[6]~1_combout\)))) # (!\inst5|Mux1~2_combout\ & (\inst5|Add1~12_combout\ & (!\opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~12_combout\,
	datab => \inst5|Mux1~2_combout\,
	datac => \opcode[2]~input_o\,
	datad => \inst2|output[6]~1_combout\,
	combout => \inst5|Mux1~3_combout\);

-- Location: LCCOMB_X12_Y21_N28
\inst5|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~5_combout\ = (\inst5|Mux1~4_combout\ & (((\inst5|Mux1~0_combout\) # (\inst5|Mux1~3_combout\)))) # (!\inst5|Mux1~4_combout\ & (\inst2|output[5]~2_combout\ & (!\inst5|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~4_combout\,
	datab => \inst2|output[5]~2_combout\,
	datac => \inst5|Mux1~0_combout\,
	datad => \inst5|Mux1~3_combout\,
	combout => \inst5|Mux1~5_combout\);

-- Location: LCCOMB_X12_Y21_N2
\inst5|temp~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~30_combout\ = \inst6|output\(6) $ (((\mux1sel~input_o\ & ((\from_memory[6]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[6]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \from_memory[6]~input_o\,
	datad => \inst6|output\(6),
	combout => \inst5|temp~30_combout\);

-- Location: LCCOMB_X12_Y21_N16
\inst5|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~11_combout\ = (\inst5|Mux1~5_combout\ & ((\inst5|Mux1~10_combout\) # ((!\inst5|Mux1~0_combout\)))) # (!\inst5|Mux1~5_combout\ & (((\inst5|Mux1~0_combout\ & \inst5|temp~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~10_combout\,
	datab => \inst5|Mux1~5_combout\,
	datac => \inst5|Mux1~0_combout\,
	datad => \inst5|temp~30_combout\,
	combout => \inst5|Mux1~11_combout\);

-- Location: LCCOMB_X12_Y21_N26
\inst5|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~16_combout\ = (!\inst5|Mux1~15_combout\ & ((\inst5|Mux1~12_combout\ & (\inst2|output[6]~1_combout\)) # (!\inst5|Mux1~12_combout\ & ((\inst5|Mux1~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[6]~1_combout\,
	datab => \inst5|Mux1~11_combout\,
	datac => \inst5|Mux1~15_combout\,
	datad => \inst5|Mux1~12_combout\,
	combout => \inst5|Mux1~16_combout\);

-- Location: LCCOMB_X12_Y21_N24
\inst5|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~17_combout\ = (\inst5|Mux1~16_combout\) # ((\inst5|Mux1~15_combout\ & \inst5|Mux1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux1~16_combout\,
	datac => \inst5|Mux1~15_combout\,
	datad => \inst5|Mux1~17_combout\,
	combout => \inst5|Mux1~17_combout\);

-- Location: LCCOMB_X12_Y21_N20
\inst3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = (\inst3|Mux1~0_combout\ & ((\inst5|Mux1~17_combout\) # ((\mux2sel[0]~input_o\)))) # (!\inst3|Mux1~0_combout\ & (((\from_memory[6]~input_o\ & !\mux2sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux1~0_combout\,
	datab => \inst5|Mux1~17_combout\,
	datac => \from_memory[6]~input_o\,
	datad => \mux2sel[0]~input_o\,
	combout => \inst3|Mux1~1_combout\);

-- Location: FF_X12_Y21_N21
\inst6|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux1~1_combout\,
	ena => \accload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|output\(6));

-- Location: LCCOMB_X12_Y21_N12
\inst2|output[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[6]~1_combout\ = (\ALUinSel~input_o\ & ((\inst6|output\(6)))) # (!\ALUinSel~input_o\ & (\inst|output[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUinSel~input_o\,
	datac => \inst|output[6]~1_combout\,
	datad => \inst6|output\(6),
	combout => \inst2|output[6]~1_combout\);

-- Location: LCCOMB_X11_Y19_N8
\inst5|temp~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~29_combout\ = \inst6|output\(7) $ (((\mux1sel~input_o\ & ((\from_memory[7]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[7]~input_o\,
	datab => \from_memory[7]~input_o\,
	datac => \inst6|output\(7),
	datad => \mux1sel~input_o\,
	combout => \inst5|temp~29_combout\);

-- Location: LCCOMB_X11_Y19_N0
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\opcode[4]~input_o\ & ((\opcode[1]~input_o\) # ((\inst5|temp~29_combout\)))) # (!\opcode[4]~input_o\ & (!\opcode[1]~input_o\ & (\inst2|output[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \inst2|output[6]~1_combout\,
	datad => \inst5|temp~29_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y20_N6
\inst5|temp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~14_combout\ = (\inst6|output\(7)) # ((\mux1sel~input_o\ & ((\from_memory[7]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1sel~input_o\,
	datab => \inst6|output\(7),
	datac => \from_cu[7]~input_o\,
	datad => \from_memory[7]~input_o\,
	combout => \inst5|temp~14_combout\);

-- Location: LCCOMB_X13_Y22_N26
\inst5|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~14_combout\ = \inst5|Add2~13\ $ (!\inst2|output[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|output[7]~0_combout\,
	cin => \inst5|Add2~13\,
	combout => \inst5|Add2~14_combout\);

-- Location: LCCOMB_X13_Y20_N10
\inst5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = (\inst5|Mux0~0_combout\ & (((\inst5|temp~14_combout\)) # (!\opcode[1]~input_o\))) # (!\inst5|Mux0~0_combout\ & (\opcode[1]~input_o\ & ((\inst5|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datab => \opcode[1]~input_o\,
	datac => \inst5|temp~14_combout\,
	datad => \inst5|Add2~14_combout\,
	combout => \inst5|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y20_N12
\inst5|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~2_combout\ = (\opcode[0]~input_o\ & (\inst5|Add0~14_combout\)) # (!\opcode[0]~input_o\ & ((\inst5|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Mux0~1_combout\,
	combout => \inst5|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y18_N26
\inst5|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~14_combout\ = \inst5|Add3~13\ $ (\inst2|output[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|output[7]~0_combout\,
	cin => \inst5|Add3~13\,
	combout => \inst5|Add3~14_combout\);

-- Location: LCCOMB_X13_Y20_N22
\inst5|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~3_combout\ = (\opcode[1]~input_o\ & ((\inst2|output[7]~0_combout\) # ((\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & (((!\opcode[0]~input_o\ & \inst5|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[7]~0_combout\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \inst5|Add3~14_combout\,
	combout => \inst5|Mux0~3_combout\);

-- Location: LCCOMB_X13_Y20_N26
\inst5|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~5_combout\ = (\opcode[0]~input_o\ & ((\opcode[2]~input_o\ $ (!\opcode[4]~input_o\)) # (!\inst5|Mux0~3_combout\))) # (!\opcode[0]~input_o\ & (\opcode[2]~input_o\ & ((\inst5|Mux0~3_combout\) # (\opcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \inst5|Mux0~3_combout\,
	datad => \opcode[4]~input_o\,
	combout => \inst5|Mux0~5_combout\);

-- Location: LCCOMB_X13_Y20_N4
\inst5|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~4_combout\ = (\opcode[2]~input_o\ & (!\opcode[4]~input_o\ & ((\inst5|Mux0~3_combout\) # (!\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \inst5|Mux0~3_combout\,
	datad => \opcode[4]~input_o\,
	combout => \inst5|Mux0~4_combout\);

-- Location: LCCOMB_X13_Y20_N20
\inst5|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~6_combout\ = (\inst5|Mux0~5_combout\ & (((\inst5|Mux0~14_combout\) # (\inst5|Mux0~4_combout\)))) # (!\inst5|Mux0~5_combout\ & (\inst5|Mux0~2_combout\ & ((!\inst5|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~2_combout\,
	datab => \inst5|Mux0~14_combout\,
	datac => \inst5|Mux0~5_combout\,
	datad => \inst5|Mux0~4_combout\,
	combout => \inst5|Mux0~6_combout\);

-- Location: LCCOMB_X12_Y20_N12
\inst5|temp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~15_combout\ = (\inst6|output\(7) & ((\mux1sel~input_o\ & ((\from_memory[7]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[7]~input_o\,
	datab => \from_memory[7]~input_o\,
	datac => \mux1sel~input_o\,
	datad => \inst6|output\(7),
	combout => \inst5|temp~15_combout\);

-- Location: LCCOMB_X11_Y20_N20
\inst5|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~8_combout\ = (\opcode[4]~input_o\ & ((\opcode[1]~input_o\ & ((\inst2|output[7]~0_combout\))) # (!\opcode[1]~input_o\ & (\inst5|temp~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \inst5|temp~15_combout\,
	datad => \inst2|output[7]~0_combout\,
	combout => \inst5|Mux0~8_combout\);

-- Location: LCCOMB_X11_Y20_N22
\inst5|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~9_combout\ = (\inst5|Mux0~8_combout\) # ((\opcode[1]~input_o\ & (!\opcode[4]~input_o\ & \inst5|Mux0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \inst5|Mux0~14_combout\,
	datad => \inst5|Mux0~8_combout\,
	combout => \inst5|Mux0~9_combout\);

-- Location: LCCOMB_X12_Y20_N10
\inst1|output[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|output[7]~0_combout\ = (\ALUinSel~input_o\ & (\inst|output[7]~0_combout\)) # (!\ALUinSel~input_o\ & ((\inst6|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUinSel~input_o\,
	datac => \inst|output[7]~0_combout\,
	datad => \inst6|output\(7),
	combout => \inst1|output[7]~0_combout\);

-- Location: LCCOMB_X12_Y19_N14
\inst5|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~14_combout\ = \inst2|output[7]~0_combout\ $ (\inst5|Add1~13\ $ (!\inst1|output[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[7]~0_combout\,
	datad => \inst1|output[7]~0_combout\,
	cin => \inst5|Add1~13\,
	combout => \inst5|Add1~14_combout\);

-- Location: LCCOMB_X12_Y19_N22
\inst5|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~10_combout\ = (\opcode[1]~input_o\ & (((\inst5|Mux0~14_combout\)))) # (!\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & (\inst5|Add1~14_combout\)) # (!\opcode[4]~input_o\ & ((\inst5|Mux0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \inst5|Add1~14_combout\,
	datad => \inst5|Mux0~14_combout\,
	combout => \inst5|Mux0~10_combout\);

-- Location: LCCOMB_X12_Y22_N16
\inst5|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~11_combout\ = (\opcode[2]~input_o\ & ((\inst5|Mux0~9_combout\) # ((\opcode[0]~input_o\)))) # (!\opcode[2]~input_o\ & (((!\opcode[0]~input_o\ & \inst5|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \inst5|Mux0~9_combout\,
	datac => \opcode[0]~input_o\,
	datad => \inst5|Mux0~10_combout\,
	combout => \inst5|Mux0~11_combout\);

-- Location: LCCOMB_X12_Y19_N28
\inst5|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~12_combout\ = (\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & (\inst2|output[7]~0_combout\)) # (!\opcode[4]~input_o\ & ((\inst5|Mux0~14_combout\))))) # (!\opcode[1]~input_o\ & (((\inst5|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \inst2|output[7]~0_combout\,
	datad => \inst5|Mux0~14_combout\,
	combout => \inst5|Mux0~12_combout\);

-- Location: LCCOMB_X12_Y19_N24
\inst5|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~7_combout\ = (\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & ((\inst5|Mux0~14_combout\))) # (!\opcode[4]~input_o\ & (!\inst2|output[7]~0_combout\)))) # (!\opcode[1]~input_o\ & ((\opcode[4]~input_o\ & (\inst2|output[7]~0_combout\)) # 
-- (!\opcode[4]~input_o\ & ((\inst5|Mux0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \inst2|output[7]~0_combout\,
	datad => \inst5|Mux0~14_combout\,
	combout => \inst5|Mux0~7_combout\);

-- Location: LCCOMB_X12_Y19_N30
\inst5|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~13_combout\ = (\inst5|Mux0~11_combout\ & ((\inst5|Mux0~12_combout\) # ((!\opcode[0]~input_o\)))) # (!\inst5|Mux0~11_combout\ & (((\opcode[0]~input_o\ & \inst5|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~11_combout\,
	datab => \inst5|Mux0~12_combout\,
	datac => \opcode[0]~input_o\,
	datad => \inst5|Mux0~7_combout\,
	combout => \inst5|Mux0~13_combout\);

-- Location: LCCOMB_X11_Y20_N8
\inst5|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~14_combout\ = (\opcode[3]~input_o\ & (\inst5|Mux0~6_combout\)) # (!\opcode[3]~input_o\ & ((\inst5|Mux0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[3]~input_o\,
	datac => \inst5|Mux0~6_combout\,
	datad => \inst5|Mux0~13_combout\,
	combout => \inst5|Mux0~14_combout\);

-- Location: LCCOMB_X11_Y20_N24
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\mux2sel[0]~input_o\ & (((\mux2sel[1]~input_o\) # (\from_cu[7]~input_o\)))) # (!\mux2sel[0]~input_o\ & (\inst5|Mux0~14_combout\ & (!\mux2sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2sel[0]~input_o\,
	datab => \inst5|Mux0~14_combout\,
	datac => \mux2sel[1]~input_o\,
	datad => \from_cu[7]~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y20_N30
\inst3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (\inst3|Mux0~0_combout\ & ((\zero[7]~input_o\) # ((!\mux2sel[1]~input_o\)))) # (!\inst3|Mux0~0_combout\ & (((\mux2sel[1]~input_o\ & \from_memory[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zero[7]~input_o\,
	datab => \inst3|Mux0~0_combout\,
	datac => \mux2sel[1]~input_o\,
	datad => \from_memory[7]~input_o\,
	combout => \inst3|Mux0~1_combout\);

-- Location: FF_X11_Y20_N31
\inst6|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Mux0~1_combout\,
	ena => \accload~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|output\(7));

-- Location: LCCOMB_X11_Y20_N2
\inst2|output[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|output[7]~0_combout\ = (\ALUinSel~input_o\ & ((\inst6|output\(7)))) # (!\ALUinSel~input_o\ & (\inst|output[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[7]~0_combout\,
	datac => \inst6|output\(7),
	datad => \ALUinSel~input_o\,
	combout => \inst2|output[7]~0_combout\);

-- Location: LCCOMB_X12_Y18_N18
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = \inst2|output[7]~0_combout\ $ (\inst5|Add0~13\ $ (\inst1|output[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[7]~0_combout\,
	datad => \inst1|output[7]~0_combout\,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\);

-- Location: LCCOMB_X11_Y20_N16
\inst5|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux9~4_combout\ = (!\opcode[2]~input_o\ & (\opcode[4]~input_o\ & (\inst5|Add0~14_combout\ & \opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \inst5|Add0~14_combout\,
	datad => \opcode[0]~input_o\,
	combout => \inst5|Mux9~4_combout\);

-- Location: LCCOMB_X11_Y20_N0
\inst5|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~18_combout\ = (\opcode[4]~input_o\ & ((\ALUinSel~input_o\ & (\inst6|output\(7))) # (!\ALUinSel~input_o\ & ((\inst|output[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output\(7),
	datab => \opcode[4]~input_o\,
	datac => \ALUinSel~input_o\,
	datad => \inst|output[7]~0_combout\,
	combout => \inst5|Mux0~18_combout\);

-- Location: LCCOMB_X11_Y20_N28
\inst5|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~17_combout\ = (\inst5|Add1~14_combout\ & \opcode[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add1~14_combout\,
	datad => \opcode[4]~input_o\,
	combout => \inst5|Mux0~17_combout\);

-- Location: LCCOMB_X11_Y20_N18
\inst5|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux9~0_combout\ = (\opcode[2]~input_o\ & ((\inst5|Mux0~8_combout\) # ((\opcode[0]~input_o\)))) # (!\opcode[2]~input_o\ & (((!\opcode[0]~input_o\ & \inst5|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \inst5|Mux0~8_combout\,
	datac => \opcode[0]~input_o\,
	datad => \inst5|Mux0~17_combout\,
	combout => \inst5|Mux9~0_combout\);

-- Location: LCCOMB_X11_Y20_N6
\inst5|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~16_combout\ = (\opcode[4]~input_o\ & ((\inst5|Add1~14_combout\))) # (!\opcode[4]~input_o\ & (!\inst2|output[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|output[7]~0_combout\,
	datac => \inst5|Add1~14_combout\,
	datad => \opcode[4]~input_o\,
	combout => \inst5|Mux0~16_combout\);

-- Location: LCCOMB_X11_Y20_N10
\inst5|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux9~1_combout\ = (\opcode[0]~input_o\ & ((\inst5|Mux9~0_combout\ & (\inst5|Mux0~18_combout\)) # (!\inst5|Mux9~0_combout\ & ((\inst5|Mux0~16_combout\))))) # (!\opcode[0]~input_o\ & (((\inst5|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \inst5|Mux0~18_combout\,
	datac => \inst5|Mux9~0_combout\,
	datad => \inst5|Mux0~16_combout\,
	combout => \inst5|Mux9~1_combout\);

-- Location: LCCOMB_X11_Y20_N12
\inst5|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux9~2_combout\ = (\opcode[2]~input_o\ & ((\opcode[1]~input_o\ & (\inst2|output[7]~0_combout\)) # (!\opcode[1]~input_o\ & ((\inst5|Add3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \inst2|output[7]~0_combout\,
	datac => \opcode[2]~input_o\,
	datad => \inst5|Add3~14_combout\,
	combout => \inst5|Mux9~2_combout\);

-- Location: LCCOMB_X11_Y20_N14
\inst5|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux9~3_combout\ = (!\opcode[0]~input_o\ & ((\inst5|Mux9~2_combout\) # ((!\opcode[2]~input_o\ & \inst5|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datab => \opcode[0]~input_o\,
	datac => \inst5|Mux0~1_combout\,
	datad => \inst5|Mux9~2_combout\,
	combout => \inst5|Mux9~3_combout\);

-- Location: LCCOMB_X11_Y20_N26
\inst5|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux9~5_combout\ = (\opcode[3]~input_o\ & ((\inst5|Mux9~4_combout\) # ((\inst5|Mux9~3_combout\)))) # (!\opcode[3]~input_o\ & (((\inst5|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \inst5|Mux9~4_combout\,
	datac => \inst5|Mux9~1_combout\,
	datad => \inst5|Mux9~3_combout\,
	combout => \inst5|Mux9~5_combout\);

-- Location: LCCOMB_X11_Y19_N28
\inst5|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux8~1_combout\ = (\opcode[4]~input_o\ & ((\opcode[3]~input_o\ & ((!\opcode[2]~input_o\))) # (!\opcode[3]~input_o\ & ((\opcode[2]~input_o\) # (!\opcode[1]~input_o\))))) # (!\opcode[4]~input_o\ & ((\opcode[3]~input_o\) # ((!\opcode[1]~input_o\ & 
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
	combout => \inst5|Mux8~1_combout\);

-- Location: LCCOMB_X11_Y19_N6
\inst5|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux8~0_combout\ = (\opcode[1]~input_o\ & (\opcode[4]~input_o\ $ (\opcode[3]~input_o\ $ (!\opcode[2]~input_o\)))) # (!\opcode[1]~input_o\ & (\opcode[4]~input_o\ & (!\opcode[3]~input_o\ & !\opcode[2]~input_o\)))

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
	combout => \inst5|Mux8~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\inst5|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux8~2_combout\ = (\opcode[0]~input_o\ & ((\inst5|Mux8~0_combout\))) # (!\opcode[0]~input_o\ & (\inst5|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux8~1_combout\,
	datac => \inst5|Mux8~0_combout\,
	datad => \opcode[0]~input_o\,
	combout => \inst5|Mux8~2_combout\);

-- Location: CLKCTRL_G0
\inst5|Mux8~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|Mux8~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|Mux8~2clkctrl_outclk\);

-- Location: LCCOMB_X11_Y20_N4
\inst5|N\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|N~combout\ = (GLOBAL(\inst5|Mux8~2clkctrl_outclk\) & (\inst5|Mux9~5_combout\)) # (!GLOBAL(\inst5|Mux8~2clkctrl_outclk\) & ((\inst5|N~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux9~5_combout\,
	datac => \inst5|N~combout\,
	datad => \inst5|Mux8~2clkctrl_outclk\,
	combout => \inst5|N~combout\);

-- Location: FF_X11_Y20_N5
\inst4|N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|N~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|N~q\);

-- Location: LCCOMB_X13_Y20_N0
\inst5|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux10~1_combout\ = (\opcode[4]~input_o\ & ((!\opcode[2]~input_o\))) # (!\opcode[4]~input_o\ & (\inst2|output[0]~7_combout\ & \opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[4]~input_o\,
	datac => \inst2|output[0]~7_combout\,
	datad => \opcode[2]~input_o\,
	combout => \inst5|Mux10~1_combout\);

-- Location: LCCOMB_X13_Y20_N16
\inst5|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux10~5_combout\ = (\opcode[0]~input_o\ & (!\opcode[2]~input_o\ & (\opcode[1]~input_o\ $ (\inst5|Mux10~1_combout\)))) # (!\opcode[0]~input_o\ & (((!\opcode[1]~input_o\ & \inst5|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \inst5|Mux10~1_combout\,
	combout => \inst5|Mux10~5_combout\);

-- Location: LCCOMB_X13_Y20_N18
\inst5|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux10~4_combout\ = (\opcode[2]~input_o\) # ((\opcode[0]~input_o\ & ((!\inst5|Mux10~1_combout\))) # (!\opcode[0]~input_o\ & (\opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \opcode[2]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \inst5|Mux10~1_combout\,
	combout => \inst5|Mux10~4_combout\);

-- Location: LCCOMB_X13_Y20_N30
\inst5|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux10~0_combout\ = (\inst5|Add0~14_combout\ & (\inst5|temp~15_combout\)) # (!\inst5|Add0~14_combout\ & ((\inst5|temp~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~15_combout\,
	datab => \inst5|temp~14_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst5|Mux10~0_combout\);

-- Location: LCCOMB_X13_Y20_N2
\inst5|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux10~2_combout\ = (\inst2|output[7]~0_combout\ & (((\inst1|output[7]~0_combout\ & \inst5|Add1~14_combout\)) # (!\inst5|Mux10~1_combout\))) # (!\inst2|output[7]~0_combout\ & (\inst5|Mux10~1_combout\ & ((\inst1|output[7]~0_combout\) # 
-- (\inst5|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[7]~0_combout\,
	datab => \inst5|Mux10~1_combout\,
	datac => \inst1|output[7]~0_combout\,
	datad => \inst5|Add1~14_combout\,
	combout => \inst5|Mux10~2_combout\);

-- Location: LCCOMB_X13_Y20_N8
\inst5|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux10~3_combout\ = (\opcode[1]~input_o\ & (\inst5|Mux10~0_combout\)) # (!\opcode[1]~input_o\ & ((\inst5|Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \inst5|Mux10~0_combout\,
	datad => \inst5|Mux10~2_combout\,
	combout => \inst5|Mux10~3_combout\);

-- Location: LCCOMB_X13_Y20_N14
\inst5|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux10~6_combout\ = (\inst5|Mux10~4_combout\ & (\inst5|Mux10~5_combout\ & ((!\opcode[3]~input_o\)))) # (!\inst5|Mux10~4_combout\ & (\inst5|Mux10~3_combout\ & (\inst5|Mux10~5_combout\ $ (\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux10~5_combout\,
	datab => \inst5|Mux10~4_combout\,
	datac => \inst5|Mux10~3_combout\,
	datad => \opcode[3]~input_o\,
	combout => \inst5|Mux10~6_combout\);

-- Location: LCCOMB_X13_Y20_N24
\inst5|C\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|C~combout\ = (GLOBAL(\inst5|Mux8~2clkctrl_outclk\) & ((\inst5|Mux10~6_combout\))) # (!GLOBAL(\inst5|Mux8~2clkctrl_outclk\) & (\inst5|C~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|C~combout\,
	datac => \inst5|Mux8~2clkctrl_outclk\,
	datad => \inst5|Mux10~6_combout\,
	combout => \inst5|C~combout\);

-- Location: FF_X13_Y20_N25
\inst4|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|C~q\);

-- Location: LCCOMB_X11_Y19_N30
\inst5|Mux11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~18_combout\ = (!\inst5|temp~29_combout\ & (!\inst5|temp~31_combout\ & (\inst1|output[6]~1_combout\ $ (!\inst2|output[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|output[6]~1_combout\,
	datab => \inst5|temp~29_combout\,
	datac => \inst2|output[6]~1_combout\,
	datad => \inst5|temp~31_combout\,
	combout => \inst5|Mux11~18_combout\);

-- Location: LCCOMB_X11_Y18_N0
\inst5|Mux11~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~17_combout\ = (!\opcode[1]~input_o\ & (!\inst5|temp~35_combout\ & (!\inst5|temp~34_combout\ & !\inst5|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \inst5|temp~35_combout\,
	datac => \inst5|temp~34_combout\,
	datad => \inst5|Add0~0_combout\,
	combout => \inst5|Mux11~17_combout\);

-- Location: LCCOMB_X11_Y18_N26
\inst5|Mux11~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~19_combout\ = (!\inst5|temp~33_combout\ & (!\inst5|temp~32_combout\ & (\inst5|Mux11~18_combout\ & \inst5|Mux11~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~33_combout\,
	datab => \inst5|temp~32_combout\,
	datac => \inst5|Mux11~18_combout\,
	datad => \inst5|Mux11~17_combout\,
	combout => \inst5|Mux11~19_combout\);

-- Location: LCCOMB_X12_Y18_N28
\inst5|Mux11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~14_combout\ = (\opcode[1]~input_o\ & (!\inst5|Add0~0_combout\ & (!\inst5|Add0~4_combout\ & !\inst5|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|Add0~6_combout\,
	combout => \inst5|Mux11~14_combout\);

-- Location: LCCOMB_X12_Y18_N2
\inst5|Mux11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~15_combout\ = (!\inst5|Add0~8_combout\ & (!\inst5|Add0~2_combout\ & (!\inst5|Add0~10_combout\ & \inst5|Mux11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~8_combout\,
	datab => \inst5|Add0~2_combout\,
	datac => \inst5|Add0~10_combout\,
	datad => \inst5|Mux11~14_combout\,
	combout => \inst5|Mux11~15_combout\);

-- Location: LCCOMB_X12_Y18_N20
\inst5|Mux11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~16_combout\ = (\opcode[0]~input_o\ & (!\inst5|Add0~12_combout\ & (!\inst5|Add0~14_combout\ & \inst5|Mux11~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \inst5|Add0~12_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Mux11~15_combout\,
	combout => \inst5|Mux11~16_combout\);

-- Location: LCCOMB_X12_Y20_N8
\inst5|Mux11~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~21_combout\ = (!\inst5|temp~14_combout\ & (!\inst5|temp~19_combout\ & (!\inst5|temp~17_combout\ & \inst5|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~14_combout\,
	datab => \inst5|temp~19_combout\,
	datac => \inst5|temp~17_combout\,
	datad => \inst5|Mux11~0_combout\,
	combout => \inst5|Mux11~21_combout\);

-- Location: LCCOMB_X12_Y22_N28
\inst5|Mux11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~20_combout\ = (!\inst5|temp~23_combout\ & (!\inst5|temp~27_combout\ & (!\inst5|temp~21_combout\ & !\inst5|temp~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~23_combout\,
	datab => \inst5|temp~27_combout\,
	datac => \inst5|temp~21_combout\,
	datad => \inst5|temp~25_combout\,
	combout => \inst5|Mux11~20_combout\);

-- Location: LCCOMB_X12_Y20_N14
\inst5|Mux11~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~22_combout\ = (\opcode[1]~input_o\ & (\inst5|Mux11~21_combout\ & \inst5|Mux11~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datac => \inst5|Mux11~21_combout\,
	datad => \inst5|Mux11~20_combout\,
	combout => \inst5|Mux11~22_combout\);

-- Location: LCCOMB_X12_Y18_N22
\inst5|Mux11~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~23_combout\ = (\inst5|Mux11~16_combout\) # ((!\opcode[0]~input_o\ & ((\inst5|Mux11~19_combout\) # (\inst5|Mux11~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux11~19_combout\,
	datab => \opcode[0]~input_o\,
	datac => \inst5|Mux11~16_combout\,
	datad => \inst5|Mux11~22_combout\,
	combout => \inst5|Mux11~23_combout\);

-- Location: LCCOMB_X13_Y21_N6
\inst5|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~10_combout\ = (\inst2|output[4]~3_combout\ & (\inst2|output[7]~0_combout\ & (\opcode[1]~input_o\ & \inst2|output[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[4]~3_combout\,
	datab => \inst2|output[7]~0_combout\,
	datac => \opcode[1]~input_o\,
	datad => \inst2|output[3]~4_combout\,
	combout => \inst5|Mux11~10_combout\);

-- Location: LCCOMB_X13_Y21_N12
\inst5|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~11_combout\ = (\inst2|output[6]~1_combout\ & (\inst2|output[0]~7_combout\ & (\inst2|output[1]~6_combout\ & \opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[6]~1_combout\,
	datab => \inst2|output[0]~7_combout\,
	datac => \inst2|output[1]~6_combout\,
	datad => \opcode[0]~input_o\,
	combout => \inst5|Mux11~11_combout\);

-- Location: LCCOMB_X13_Y21_N2
\inst5|Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~12_combout\ = (\inst5|Mux11~10_combout\ & (\inst2|output[2]~5_combout\ & (\inst5|Mux11~11_combout\ & \inst2|output[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux11~10_combout\,
	datab => \inst2|output[2]~5_combout\,
	datac => \inst5|Mux11~11_combout\,
	datad => \inst2|output[5]~2_combout\,
	combout => \inst5|Mux11~12_combout\);

-- Location: LCCOMB_X12_Y19_N20
\inst5|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~8_combout\ = (!\inst5|Add1~6_combout\ & (!\inst5|Add1~4_combout\ & (!\inst5|Add1~8_combout\ & !\inst5|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~6_combout\,
	datab => \inst5|Add1~4_combout\,
	datac => \inst5|Add1~8_combout\,
	datad => \inst5|Add1~2_combout\,
	combout => \inst5|Mux11~8_combout\);

-- Location: LCCOMB_X12_Y19_N18
\inst5|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~7_combout\ = (!\inst5|Add1~12_combout\ & (!\opcode[1]~input_o\ & (!\inst5|Add1~14_combout\ & !\inst5|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~12_combout\,
	datab => \opcode[1]~input_o\,
	datac => \inst5|Add1~14_combout\,
	datad => \inst5|Add1~10_combout\,
	combout => \inst5|Mux11~7_combout\);

-- Location: LCCOMB_X12_Y19_N26
\inst5|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~9_combout\ = (!\inst5|Add1~0_combout\ & (\inst5|Mux11~8_combout\ & \inst5|Mux11~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mux11~8_combout\,
	datad => \inst5|Mux11~7_combout\,
	combout => \inst5|Mux11~9_combout\);

-- Location: LCCOMB_X13_Y18_N2
\inst5|Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~13_combout\ = (\opcode[3]~input_o\ & (((\opcode[4]~input_o\)))) # (!\opcode[3]~input_o\ & ((\opcode[4]~input_o\ & ((\inst5|Mux11~9_combout\))) # (!\opcode[4]~input_o\ & (\inst5|Mux11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \inst5|Mux11~12_combout\,
	datac => \opcode[4]~input_o\,
	datad => \inst5|Mux11~9_combout\,
	combout => \inst5|Mux11~13_combout\);

-- Location: LCCOMB_X13_Y22_N30
\inst5|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~1_combout\ = (!\inst5|Add2~10_combout\ & (!\inst5|Add2~6_combout\ & (!\inst5|Add2~4_combout\ & !\inst5|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~10_combout\,
	datab => \inst5|Add2~6_combout\,
	datac => \inst5|Add2~4_combout\,
	datad => \inst5|Add2~8_combout\,
	combout => \inst5|Mux11~1_combout\);

-- Location: LCCOMB_X13_Y21_N22
\inst5|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~2_combout\ = (!\inst2|output[4]~3_combout\ & (!\inst2|output[2]~5_combout\ & (!\inst2|output[1]~6_combout\ & !\inst2|output[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[4]~3_combout\,
	datab => \inst2|output[2]~5_combout\,
	datac => \inst2|output[1]~6_combout\,
	datad => \inst2|output[3]~4_combout\,
	combout => \inst5|Mux11~2_combout\);

-- Location: LCCOMB_X13_Y21_N0
\inst5|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~3_combout\ = (!\inst2|output[6]~1_combout\ & (\inst5|Mux11~2_combout\ & !\inst2|output[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[6]~1_combout\,
	datac => \inst5|Mux11~2_combout\,
	datad => \inst2|output[5]~2_combout\,
	combout => \inst5|Mux11~3_combout\);

-- Location: LCCOMB_X13_Y22_N0
\inst5|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~4_combout\ = (\inst5|Add2~0_combout\) # ((\inst5|Add2~2_combout\) # ((\inst5|Add2~14_combout\) # (\inst5|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add2~0_combout\,
	datab => \inst5|Add2~2_combout\,
	datac => \inst5|Add2~14_combout\,
	datad => \inst5|Add2~12_combout\,
	combout => \inst5|Mux11~4_combout\);

-- Location: LCCOMB_X13_Y22_N10
\inst5|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~5_combout\ = (\opcode[1]~input_o\ & (((\inst5|Mux11~4_combout\)))) # (!\opcode[1]~input_o\ & (!\inst2|output[0]~7_combout\ & (\inst5|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output[0]~7_combout\,
	datab => \inst5|Mux11~3_combout\,
	datac => \opcode[1]~input_o\,
	datad => \inst5|Mux11~4_combout\,
	combout => \inst5|Mux11~5_combout\);

-- Location: LCCOMB_X13_Y22_N4
\inst5|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~6_combout\ = (!\opcode[0]~input_o\ & ((\opcode[1]~input_o\ & (\inst5|Mux11~1_combout\ & !\inst5|Mux11~5_combout\)) # (!\opcode[1]~input_o\ & ((\inst5|Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \inst5|Mux11~1_combout\,
	datad => \inst5|Mux11~5_combout\,
	combout => \inst5|Mux11~6_combout\);

-- Location: LCCOMB_X13_Y18_N8
\inst5|Mux11~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~24_combout\ = (\opcode[3]~input_o\ & ((\inst5|Mux11~13_combout\ & (\inst5|Mux11~23_combout\)) # (!\inst5|Mux11~13_combout\ & ((\inst5|Mux11~6_combout\))))) # (!\opcode[3]~input_o\ & (((\inst5|Mux11~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux11~23_combout\,
	datab => \opcode[3]~input_o\,
	datac => \inst5|Mux11~13_combout\,
	datad => \inst5|Mux11~6_combout\,
	combout => \inst5|Mux11~24_combout\);

-- Location: LCCOMB_X13_Y19_N18
\inst5|Mux11~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~32_combout\ = (\opcode[3]~input_o\ & ((!\opcode[4]~input_o\) # (!\opcode[1]~input_o\))) # (!\opcode[3]~input_o\ & ((\opcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[4]~input_o\,
	combout => \inst5|Mux11~32_combout\);

-- Location: LCCOMB_X13_Y21_N8
\inst5|Mux11~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~33_combout\ = (\inst2|output[7]~0_combout\ & (((!\opcode[1]~input_o\)))) # (!\inst2|output[7]~0_combout\ & (\inst5|Mux11~32_combout\ & ((!\opcode[1]~input_o\) # (!\inst2|output[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux11~32_combout\,
	datab => \inst2|output[0]~7_combout\,
	datac => \opcode[1]~input_o\,
	datad => \inst2|output[7]~0_combout\,
	combout => \inst5|Mux11~33_combout\);

-- Location: LCCOMB_X12_Y20_N0
\inst5|Mux11~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~30_combout\ = (!\inst5|temp~15_combout\ & (!\inst5|temp~18_combout\ & (!\inst5|temp~16_combout\ & !\inst5|temp~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~15_combout\,
	datab => \inst5|temp~18_combout\,
	datac => \inst5|temp~16_combout\,
	datad => \inst5|temp~20_combout\,
	combout => \inst5|Mux11~30_combout\);

-- Location: LCCOMB_X12_Y21_N4
\inst5|temp~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|temp~28_combout\ = (\inst6|output\(0) & ((\mux1sel~input_o\ & ((\from_memory[0]~input_o\))) # (!\mux1sel~input_o\ & (\from_cu[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \from_cu[0]~input_o\,
	datab => \mux1sel~input_o\,
	datac => \from_memory[0]~input_o\,
	datad => \inst6|output\(0),
	combout => \inst5|temp~28_combout\);

-- Location: LCCOMB_X13_Y21_N28
\inst5|Mux11~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~29_combout\ = (!\inst5|temp~26_combout\ & (!\inst5|temp~28_combout\ & (!\inst5|temp~22_combout\ & !\inst5|temp~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|temp~26_combout\,
	datab => \inst5|temp~28_combout\,
	datac => \inst5|temp~22_combout\,
	datad => \inst5|temp~24_combout\,
	combout => \inst5|Mux11~29_combout\);

-- Location: LCCOMB_X13_Y21_N10
\inst5|Mux11~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~31_combout\ = (\opcode[4]~input_o\ & (!\opcode[3]~input_o\ & (\inst5|Mux11~30_combout\ & \inst5|Mux11~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[4]~input_o\,
	datab => \opcode[3]~input_o\,
	datac => \inst5|Mux11~30_combout\,
	datad => \inst5|Mux11~29_combout\,
	combout => \inst5|Mux11~31_combout\);

-- Location: LCCOMB_X13_Y21_N14
\inst5|Mux11~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~34_combout\ = (\opcode[1]~input_o\ & (\inst5|Mux11~3_combout\ & (\inst5|Mux11~33_combout\))) # (!\opcode[1]~input_o\ & ((\inst5|Mux11~31_combout\) # ((\inst5|Mux11~3_combout\ & !\inst5|Mux11~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~input_o\,
	datab => \inst5|Mux11~3_combout\,
	datac => \inst5|Mux11~33_combout\,
	datad => \inst5|Mux11~31_combout\,
	combout => \inst5|Mux11~34_combout\);

-- Location: LCCOMB_X13_Y18_N4
\inst5|Mux11~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~27_combout\ = (!\inst5|Add3~10_combout\ & (!\inst5|Add3~4_combout\ & (!\inst5|Add3~6_combout\ & !\inst5|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~10_combout\,
	datab => \inst5|Add3~4_combout\,
	datac => \inst5|Add3~6_combout\,
	datad => \inst5|Add3~8_combout\,
	combout => \inst5|Mux11~27_combout\);

-- Location: LCCOMB_X13_Y18_N10
\inst5|Mux11~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~26_combout\ = (\opcode[3]~input_o\ & (!\opcode[4]~input_o\ & (!\inst5|Add3~14_combout\ & !\inst5|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[4]~input_o\,
	datac => \inst5|Add3~14_combout\,
	datad => \inst5|Add3~12_combout\,
	combout => \inst5|Mux11~26_combout\);

-- Location: LCCOMB_X13_Y18_N6
\inst5|Mux11~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~28_combout\ = (!\inst5|Add3~0_combout\ & (!\inst5|Add3~2_combout\ & (\inst5|Mux11~27_combout\ & \inst5|Mux11~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~0_combout\,
	datab => \inst5|Add3~2_combout\,
	datac => \inst5|Mux11~27_combout\,
	datad => \inst5|Mux11~26_combout\,
	combout => \inst5|Mux11~28_combout\);

-- Location: LCCOMB_X13_Y18_N28
\inst5|Mux11~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~35_combout\ = (\opcode[1]~input_o\ & (((\inst5|Mux11~34_combout\)))) # (!\opcode[1]~input_o\ & (!\opcode[0]~input_o\ & ((\inst5|Mux11~34_combout\) # (\inst5|Mux11~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \inst5|Mux11~34_combout\,
	datad => \inst5|Mux11~28_combout\,
	combout => \inst5|Mux11~35_combout\);

-- Location: LCCOMB_X14_Y18_N26
\inst5|Mux11~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~25_combout\ = (\opcode[0]~input_o\ & (\opcode[1]~input_o\ & (\opcode[3]~input_o\ & !\opcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[0]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[3]~input_o\,
	datad => \opcode[4]~input_o\,
	combout => \inst5|Mux11~25_combout\);

-- Location: LCCOMB_X13_Y18_N30
\inst5|Mux11~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux11~36_combout\ = (\opcode[2]~input_o\ & (((\inst5|Mux11~35_combout\) # (\inst5|Mux11~25_combout\)))) # (!\opcode[2]~input_o\ & (\inst5|Mux11~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux11~24_combout\,
	datab => \inst5|Mux11~35_combout\,
	datac => \opcode[2]~input_o\,
	datad => \inst5|Mux11~25_combout\,
	combout => \inst5|Mux11~36_combout\);

-- Location: LCCOMB_X13_Y18_N0
\inst5|Z\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Z~combout\ = (GLOBAL(\inst5|Mux8~2clkctrl_outclk\) & (\inst5|Mux11~36_combout\)) # (!GLOBAL(\inst5|Mux8~2clkctrl_outclk\) & ((\inst5|Z~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mux11~36_combout\,
	datac => \inst5|Mux8~2clkctrl_outclk\,
	datad => \inst5|Z~combout\,
	combout => \inst5|Z~combout\);

-- Location: FF_X13_Y18_N1
\inst4|Z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Z~q\);

ww_N <= \N~output_o\;

ww_C <= \C~output_o\;

ww_Z <= \Z~output_o\;

ww_acc_out(7) <= \acc_out[7]~output_o\;

ww_acc_out(6) <= \acc_out[6]~output_o\;

ww_acc_out(5) <= \acc_out[5]~output_o\;

ww_acc_out(4) <= \acc_out[4]~output_o\;

ww_acc_out(3) <= \acc_out[3]~output_o\;

ww_acc_out(2) <= \acc_out[2]~output_o\;

ww_acc_out(1) <= \acc_out[1]~output_o\;

ww_acc_out(0) <= \acc_out[0]~output_o\;

ww_to_memory(7) <= \to_memory[7]~output_o\;

ww_to_memory(6) <= \to_memory[6]~output_o\;

ww_to_memory(5) <= \to_memory[5]~output_o\;

ww_to_memory(4) <= \to_memory[4]~output_o\;

ww_to_memory(3) <= \to_memory[3]~output_o\;

ww_to_memory(2) <= \to_memory[2]~output_o\;

ww_to_memory(1) <= \to_memory[1]~output_o\;

ww_to_memory(0) <= \to_memory[0]~output_o\;
END structure;


