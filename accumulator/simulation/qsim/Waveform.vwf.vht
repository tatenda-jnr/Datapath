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
-- Generated on "09/06/2017 15:44:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          accumulator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY accumulator_vhd_vec_tst IS
END accumulator_vhd_vec_tst;
ARCHITECTURE accumulator_arch OF accumulator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL load : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT accumulator
	PORT (
	CLK : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	load : IN STD_LOGIC;
	output : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : accumulator
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	input => input,
	load => load,
	output => output
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 50000 ps;
	CLK <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- input[7]
t_prcs_input_7: PROCESS
BEGIN
	input(7) <= '0';
WAIT;
END PROCESS t_prcs_input_7;
-- input[6]
t_prcs_input_6: PROCESS
BEGIN
	input(6) <= '0';
WAIT;
END PROCESS t_prcs_input_6;
-- input[5]
t_prcs_input_5: PROCESS
BEGIN
	input(5) <= '0';
WAIT;
END PROCESS t_prcs_input_5;
-- input[4]
t_prcs_input_4: PROCESS
BEGIN
	input(4) <= '0';
	WAIT FOR 180000 ps;
	input(4) <= '1';
	WAIT FOR 180000 ps;
	input(4) <= '0';
WAIT;
END PROCESS t_prcs_input_4;
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	input(3) <= '1';
	WAIT FOR 180000 ps;
	input(3) <= '0';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	input(2) <= '0';
	WAIT FOR 180000 ps;
	input(2) <= '1';
	WAIT FOR 180000 ps;
	input(2) <= '0';
WAIT;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	input(1) <= '1';
	WAIT FOR 180000 ps;
	input(1) <= '0';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	input(0) <= '0';
WAIT;
END PROCESS t_prcs_input_0;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
	WAIT FOR 20000 ps;
	load <= '1';
	WAIT FOR 920000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
END accumulator_arch;
