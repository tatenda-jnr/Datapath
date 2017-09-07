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
-- Generated on "09/06/2017 14:51:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          status_reg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY status_reg_vhd_vec_tst IS
END status_reg_vhd_vec_tst;
ARCHITECTURE status_reg_arch OF status_reg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL in_C : STD_LOGIC;
SIGNAL in_N : STD_LOGIC;
SIGNAL in_Z : STD_LOGIC;
SIGNAL N : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT status_reg
	PORT (
	C : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	in_C : IN STD_LOGIC;
	in_N : IN STD_LOGIC;
	in_Z : IN STD_LOGIC;
	N : OUT STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : status_reg
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	CLK => CLK,
	in_C => in_C,
	in_N => in_N,
	in_Z => in_Z,
	N => N,
	Z => Z
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

-- in_C
t_prcs_in_C: PROCESS
BEGIN
	in_C <= '0';
	WAIT FOR 380000 ps;
	in_C <= '1';
	WAIT FOR 400000 ps;
	in_C <= '0';
WAIT;
END PROCESS t_prcs_in_C;

-- in_N
t_prcs_in_N: PROCESS
BEGIN
	in_N <= '0';
	WAIT FOR 220000 ps;
	in_N <= '1';
	WAIT FOR 160000 ps;
	in_N <= '0';
	WAIT FOR 240000 ps;
	in_N <= '1';
	WAIT FOR 160000 ps;
	in_N <= '0';
WAIT;
END PROCESS t_prcs_in_N;

-- in_Z
t_prcs_in_Z: PROCESS
BEGIN
	in_Z <= '0';
	WAIT FOR 140000 ps;
	in_Z <= '1';
	WAIT FOR 80000 ps;
	in_Z <= '0';
	WAIT FOR 100000 ps;
	in_Z <= '1';
	WAIT FOR 60000 ps;
	in_Z <= '0';
	WAIT FOR 140000 ps;
	in_Z <= '1';
	WAIT FOR 60000 ps;
	in_Z <= '0';
	WAIT FOR 140000 ps;
	in_Z <= '1';
	WAIT FOR 60000 ps;
	in_Z <= '0';
WAIT;
END PROCESS t_prcs_in_Z;
END status_reg_arch;
