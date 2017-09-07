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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/06/2017 19:32:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          datapath
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapath_vhd_vec_tst IS
END datapath_vhd_vec_tst;
ARCHITECTURE datapath_arch OF datapath_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL acc_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL accload : STD_LOGIC;
SIGNAL ALUinSel : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL from_cu : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL from_memory : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL mux1sel : STD_LOGIC;
SIGNAL mux2sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL N : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL to_memory : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
SIGNAL zero : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT datapath
	PORT (
	acc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	accload : IN STD_LOGIC;
	ALUinSel : IN STD_LOGIC;
	C : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	from_cu : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	from_memory : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	mux1sel : IN STD_LOGIC;
	mux2sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	N : OUT STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	to_memory : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Z : OUT STD_LOGIC;
	zero : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : datapath
	PORT MAP (
-- list connections between master ports and signals
	acc_out => acc_out,
	accload => accload,
	ALUinSel => ALUinSel,
	C => C,
	clk => clk,
	from_cu => from_cu,
	from_memory => from_memory,
	mux1sel => mux1sel,
	mux2sel => mux2sel,
	N => N,
	opcode => opcode,
	to_memory => to_memory,
	Z => Z,
	zero => zero
	);

-- accload
t_prcs_accload: PROCESS
BEGIN
	accload <= '0';
WAIT;
END PROCESS t_prcs_accload;

-- ALUinSel
t_prcs_ALUinSel: PROCESS
BEGIN
	ALUinSel <= '0';
WAIT;
END PROCESS t_prcs_ALUinSel;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- from_cu[7]
t_prcs_from_cu_7: PROCESS
BEGIN
	from_cu(7) <= '0';
WAIT;
END PROCESS t_prcs_from_cu_7;
-- from_cu[6]
t_prcs_from_cu_6: PROCESS
BEGIN
	from_cu(6) <= '0';
WAIT;
END PROCESS t_prcs_from_cu_6;
-- from_cu[5]
t_prcs_from_cu_5: PROCESS
BEGIN
	from_cu(5) <= '0';
WAIT;
END PROCESS t_prcs_from_cu_5;
-- from_cu[4]
t_prcs_from_cu_4: PROCESS
BEGIN
	from_cu(4) <= '1';
WAIT;
END PROCESS t_prcs_from_cu_4;
-- from_cu[3]
t_prcs_from_cu_3: PROCESS
BEGIN
	from_cu(3) <= '0';
WAIT;
END PROCESS t_prcs_from_cu_3;
-- from_cu[2]
t_prcs_from_cu_2: PROCESS
BEGIN
	from_cu(2) <= '1';
WAIT;
END PROCESS t_prcs_from_cu_2;
-- from_cu[1]
t_prcs_from_cu_1: PROCESS
BEGIN
	from_cu(1) <= '0';
WAIT;
END PROCESS t_prcs_from_cu_1;
-- from_cu[0]
t_prcs_from_cu_0: PROCESS
BEGIN
	from_cu(0) <= '0';
WAIT;
END PROCESS t_prcs_from_cu_0;
-- from_memory[7]
t_prcs_from_memory_7: PROCESS
BEGIN
	from_memory(7) <= '0';
WAIT;
END PROCESS t_prcs_from_memory_7;
-- from_memory[6]
t_prcs_from_memory_6: PROCESS
BEGIN
	from_memory(6) <= '0';
WAIT;
END PROCESS t_prcs_from_memory_6;
-- from_memory[5]
t_prcs_from_memory_5: PROCESS
BEGIN
	from_memory(5) <= '0';
WAIT;
END PROCESS t_prcs_from_memory_5;
-- from_memory[4]
t_prcs_from_memory_4: PROCESS
BEGIN
	from_memory(4) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_4;
-- from_memory[3]
t_prcs_from_memory_3: PROCESS
BEGIN
	from_memory(3) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_3;
-- from_memory[2]
t_prcs_from_memory_2: PROCESS
BEGIN
	from_memory(2) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_2;
-- from_memory[1]
t_prcs_from_memory_1: PROCESS
BEGIN
	from_memory(1) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_1;
-- from_memory[0]
t_prcs_from_memory_0: PROCESS
BEGIN
	from_memory(0) <= '0';
WAIT;
END PROCESS t_prcs_from_memory_0;

-- mux1sel
t_prcs_mux1sel: PROCESS
BEGIN
	mux1sel <= '0';
	WAIT FOR 10000 ps;
	mux1sel <= '1';
	WAIT FOR 980000 ps;
	mux1sel <= '0';
WAIT;
END PROCESS t_prcs_mux1sel;
-- mux2sel[1]
t_prcs_mux2sel_1: PROCESS
BEGIN
	mux2sel(1) <= '0';
WAIT;
END PROCESS t_prcs_mux2sel_1;
-- mux2sel[0]
t_prcs_mux2sel_0: PROCESS
BEGIN
	mux2sel(0) <= '1';
WAIT;
END PROCESS t_prcs_mux2sel_0;
-- opcode[4]
t_prcs_opcode_4: PROCESS
BEGIN
	opcode(4) <= '0';
WAIT;
END PROCESS t_prcs_opcode_4;
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	opcode(3) <= '1';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	opcode(2) <= '1';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	opcode(1) <= '1';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
	opcode(0) <= '1';
WAIT;
END PROCESS t_prcs_opcode_0;
-- zero[7]
t_prcs_zero_7: PROCESS
BEGIN
	zero(7) <= '0';
WAIT;
END PROCESS t_prcs_zero_7;
-- zero[6]
t_prcs_zero_6: PROCESS
BEGIN
	zero(6) <= '0';
WAIT;
END PROCESS t_prcs_zero_6;
-- zero[5]
t_prcs_zero_5: PROCESS
BEGIN
	zero(5) <= '0';
WAIT;
END PROCESS t_prcs_zero_5;
-- zero[4]
t_prcs_zero_4: PROCESS
BEGIN
	zero(4) <= '0';
WAIT;
END PROCESS t_prcs_zero_4;
-- zero[3]
t_prcs_zero_3: PROCESS
BEGIN
	zero(3) <= '0';
WAIT;
END PROCESS t_prcs_zero_3;
-- zero[2]
t_prcs_zero_2: PROCESS
BEGIN
	zero(2) <= '0';
WAIT;
END PROCESS t_prcs_zero_2;
-- zero[1]
t_prcs_zero_1: PROCESS
BEGIN
	zero(1) <= '0';
WAIT;
END PROCESS t_prcs_zero_1;
-- zero[0]
t_prcs_zero_0: PROCESS
BEGIN
	zero(0) <= '0';
WAIT;
END PROCESS t_prcs_zero_0;
END datapath_arch;
