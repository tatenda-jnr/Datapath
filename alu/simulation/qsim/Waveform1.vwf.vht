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
-- Generated on "09/06/2017 22:04:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL in_acc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL inp_b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL N : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL out_alu : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT alu
	PORT (
	C : BUFFER STD_LOGIC;
	in_acc : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	inp_b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	N : BUFFER STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	out_alu : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Z : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	in_acc => in_acc,
	inp_b => inp_b,
	N => N,
	opcode => opcode,
	out_alu => out_alu,
	Z => Z
	);
-- in_acc[7]
t_prcs_in_acc_7: PROCESS
BEGIN
	in_acc(7) <= '0';
	WAIT FOR 340000 ps;
	in_acc(7) <= '1';
	WAIT FOR 180000 ps;
	in_acc(7) <= '0';
WAIT;
END PROCESS t_prcs_in_acc_7;
-- in_acc[6]
t_prcs_in_acc_6: PROCESS
BEGIN
	in_acc(6) <= '0';
	WAIT FOR 340000 ps;
	in_acc(6) <= '1';
	WAIT FOR 180000 ps;
	in_acc(6) <= '0';
WAIT;
END PROCESS t_prcs_in_acc_6;
-- in_acc[5]
t_prcs_in_acc_5: PROCESS
BEGIN
	in_acc(5) <= '0';
	WAIT FOR 340000 ps;
	in_acc(5) <= '1';
	WAIT FOR 180000 ps;
	in_acc(5) <= '0';
WAIT;
END PROCESS t_prcs_in_acc_5;
-- in_acc[4]
t_prcs_in_acc_4: PROCESS
BEGIN
	in_acc(4) <= '0';
	WAIT FOR 340000 ps;
	in_acc(4) <= '1';
	WAIT FOR 180000 ps;
	in_acc(4) <= '0';
WAIT;
END PROCESS t_prcs_in_acc_4;
-- in_acc[3]
t_prcs_in_acc_3: PROCESS
BEGIN
	in_acc(3) <= '0';
	WAIT FOR 340000 ps;
	in_acc(3) <= '1';
	WAIT FOR 180000 ps;
	in_acc(3) <= '0';
WAIT;
END PROCESS t_prcs_in_acc_3;
-- in_acc[2]
t_prcs_in_acc_2: PROCESS
BEGIN
	in_acc(2) <= '1';
	WAIT FOR 180000 ps;
	in_acc(2) <= '0';
	WAIT FOR 160000 ps;
	in_acc(2) <= '1';
	WAIT FOR 180000 ps;
	in_acc(2) <= '0';
WAIT;
END PROCESS t_prcs_in_acc_2;
-- in_acc[1]
t_prcs_in_acc_1: PROCESS
BEGIN
	in_acc(1) <= '0';
	WAIT FOR 340000 ps;
	in_acc(1) <= '1';
	WAIT FOR 180000 ps;
	in_acc(1) <= '0';
WAIT;
END PROCESS t_prcs_in_acc_1;
-- in_acc[0]
t_prcs_in_acc_0: PROCESS
BEGIN
	in_acc(0) <= '0';
	WAIT FOR 340000 ps;
	in_acc(0) <= '1';
	WAIT FOR 180000 ps;
	in_acc(0) <= '0';
WAIT;
END PROCESS t_prcs_in_acc_0;
-- inp_b[7]
t_prcs_inp_b_7: PROCESS
BEGIN
	inp_b(7) <= '0';
	WAIT FOR 340000 ps;
	inp_b(7) <= '1';
	WAIT FOR 180000 ps;
	inp_b(7) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_7;
-- inp_b[6]
t_prcs_inp_b_6: PROCESS
BEGIN
	inp_b(6) <= '0';
	WAIT FOR 340000 ps;
	inp_b(6) <= '1';
	WAIT FOR 180000 ps;
	inp_b(6) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_6;
-- inp_b[5]
t_prcs_inp_b_5: PROCESS
BEGIN
	inp_b(5) <= '0';
	WAIT FOR 340000 ps;
	inp_b(5) <= '1';
	WAIT FOR 180000 ps;
	inp_b(5) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_5;
-- inp_b[4]
t_prcs_inp_b_4: PROCESS
BEGIN
	inp_b(4) <= '0';
	WAIT FOR 340000 ps;
	inp_b(4) <= '1';
	WAIT FOR 180000 ps;
	inp_b(4) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_4;
-- inp_b[3]
t_prcs_inp_b_3: PROCESS
BEGIN
	inp_b(3) <= '0';
	WAIT FOR 340000 ps;
	inp_b(3) <= '1';
	WAIT FOR 180000 ps;
	inp_b(3) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_3;
-- inp_b[2]
t_prcs_inp_b_2: PROCESS
BEGIN
	inp_b(2) <= '0';
	WAIT FOR 340000 ps;
	inp_b(2) <= '1';
	WAIT FOR 180000 ps;
	inp_b(2) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_2;
-- inp_b[1]
t_prcs_inp_b_1: PROCESS
BEGIN
	inp_b(1) <= '0';
	WAIT FOR 340000 ps;
	inp_b(1) <= '1';
	WAIT FOR 180000 ps;
	inp_b(1) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_1;
-- inp_b[0]
t_prcs_inp_b_0: PROCESS
BEGIN
	inp_b(0) <= '0';
	WAIT FOR 340000 ps;
	inp_b(0) <= '1';
	WAIT FOR 180000 ps;
	inp_b(0) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_0;
-- opcode[4]
t_prcs_opcode_4: PROCESS
BEGIN
	opcode(4) <= '1';
WAIT;
END PROCESS t_prcs_opcode_4;
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	opcode(3) <= '0';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	opcode(2) <= '0';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	opcode(1) <= '0';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
	opcode(0) <= '1';
WAIT;
END PROCESS t_prcs_opcode_0;
END alu_arch;
