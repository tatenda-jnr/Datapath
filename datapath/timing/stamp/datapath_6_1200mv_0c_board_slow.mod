/*
 Copyright (C) 2017  Intel Corporation. All rights reserved.
 Your use of Intel Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Intel Program License 
 Subscription Agreement, the Intel Quartus Prime License Agreement,
 the Intel MegaCore Function License Agreement, or other 
 applicable license agreement, including, without limitation, 
 that your use is for the sole purpose of programming logic 
 devices manufactured by Intel and sold by Intel or its 
 authorized distributors.  Please refer to the applicable 
 agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part EP4CE6E22C6
 with speed grade 6, core voltage 1.2V, and temperature 0 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "datapath";
DATE "09/06/2017 16:00:32";
PROGRAM "Quartus Prime";



INPUT accload;
INPUT zero[0];
INPUT mux2sel[0];
INPUT from_memory[0];
INPUT mux2sel[1];
INPUT ALUinSel;
INPUT from_cu[0];
INPUT mux1sel;
INPUT opcode[0];
INPUT opcode[2];
INPUT opcode[4];
INPUT from_memory[1];
INPUT zero[1];
INPUT from_cu[1];
INPUT opcode[1];
INPUT opcode[3];
INPUT from_cu[2];
INPUT from_memory[2];
INPUT from_memory[3];
INPUT from_cu[3];
INPUT from_memory[4];
INPUT from_cu[4];
INPUT zero[4];
INPUT from_memory[5];
INPUT from_cu[5];
INPUT from_memory[6];
INPUT from_cu[6];
INPUT from_memory[7];
INPUT from_cu[7];
INPUT zero[7];
INPUT clk;
INPUT zero[6];
INPUT zero[5];
INPUT zero[3];
INPUT zero[2];
OUTPUT N;
OUTPUT C;
OUTPUT Z;
OUTPUT acc_out[7];
OUTPUT acc_out[6];
OUTPUT acc_out[5];
OUTPUT acc_out[4];
OUTPUT acc_out[3];
OUTPUT acc_out[2];
OUTPUT acc_out[1];
OUTPUT acc_out[0];
OUTPUT to_memory[7];
OUTPUT to_memory[6];
OUTPUT to_memory[5];
OUTPUT to_memory[4];
OUTPUT to_memory[3];
OUTPUT to_memory[2];
OUTPUT to_memory[1];
OUTPUT to_memory[0];

/*Arc definitions start here*/
pos_ALUinSel__clk__setup:		SETUP (POSEDGE) ALUinSel clk ;
pos_accload__clk__setup:		SETUP (POSEDGE) accload clk ;
pos_from_cu[0]__clk__setup:		SETUP (POSEDGE) from_cu[0] clk ;
pos_from_cu[1]__clk__setup:		SETUP (POSEDGE) from_cu[1] clk ;
pos_from_cu[2]__clk__setup:		SETUP (POSEDGE) from_cu[2] clk ;
pos_from_cu[3]__clk__setup:		SETUP (POSEDGE) from_cu[3] clk ;
pos_from_cu[4]__clk__setup:		SETUP (POSEDGE) from_cu[4] clk ;
pos_from_cu[5]__clk__setup:		SETUP (POSEDGE) from_cu[5] clk ;
pos_from_cu[6]__clk__setup:		SETUP (POSEDGE) from_cu[6] clk ;
pos_from_cu[7]__clk__setup:		SETUP (POSEDGE) from_cu[7] clk ;
pos_from_memory[0]__clk__setup:		SETUP (POSEDGE) from_memory[0] clk ;
pos_from_memory[1]__clk__setup:		SETUP (POSEDGE) from_memory[1] clk ;
pos_from_memory[2]__clk__setup:		SETUP (POSEDGE) from_memory[2] clk ;
pos_from_memory[3]__clk__setup:		SETUP (POSEDGE) from_memory[3] clk ;
pos_from_memory[4]__clk__setup:		SETUP (POSEDGE) from_memory[4] clk ;
pos_from_memory[5]__clk__setup:		SETUP (POSEDGE) from_memory[5] clk ;
pos_from_memory[6]__clk__setup:		SETUP (POSEDGE) from_memory[6] clk ;
pos_from_memory[7]__clk__setup:		SETUP (POSEDGE) from_memory[7] clk ;
pos_mux1sel__clk__setup:		SETUP (POSEDGE) mux1sel clk ;
pos_mux2sel[0]__clk__setup:		SETUP (POSEDGE) mux2sel[0] clk ;
pos_mux2sel[1]__clk__setup:		SETUP (POSEDGE) mux2sel[1] clk ;
pos_opcode[0]__clk__setup:		SETUP (POSEDGE) opcode[0] clk ;
pos_opcode[1]__clk__setup:		SETUP (POSEDGE) opcode[1] clk ;
pos_opcode[2]__clk__setup:		SETUP (POSEDGE) opcode[2] clk ;
pos_opcode[3]__clk__setup:		SETUP (POSEDGE) opcode[3] clk ;
pos_opcode[4]__clk__setup:		SETUP (POSEDGE) opcode[4] clk ;
pos_zero[0]__clk__setup:		SETUP (POSEDGE) zero[0] clk ;
pos_zero[1]__clk__setup:		SETUP (POSEDGE) zero[1] clk ;
pos_zero[2]__clk__setup:		SETUP (POSEDGE) zero[2] clk ;
pos_zero[3]__clk__setup:		SETUP (POSEDGE) zero[3] clk ;
pos_zero[4]__clk__setup:		SETUP (POSEDGE) zero[4] clk ;
pos_zero[5]__clk__setup:		SETUP (POSEDGE) zero[5] clk ;
pos_zero[6]__clk__setup:		SETUP (POSEDGE) zero[6] clk ;
pos_zero[7]__clk__setup:		SETUP (POSEDGE) zero[7] clk ;
pos_ALUinSel__opcode[0]__setup:		SETUP (POSEDGE) ALUinSel opcode[0] ;
pos_from_cu[0]__opcode[0]__setup:		SETUP (POSEDGE) from_cu[0] opcode[0] ;
pos_from_cu[1]__opcode[0]__setup:		SETUP (POSEDGE) from_cu[1] opcode[0] ;
pos_from_cu[2]__opcode[0]__setup:		SETUP (POSEDGE) from_cu[2] opcode[0] ;
pos_from_cu[3]__opcode[0]__setup:		SETUP (POSEDGE) from_cu[3] opcode[0] ;
pos_from_cu[4]__opcode[0]__setup:		SETUP (POSEDGE) from_cu[4] opcode[0] ;
pos_from_cu[5]__opcode[0]__setup:		SETUP (POSEDGE) from_cu[5] opcode[0] ;
pos_from_cu[6]__opcode[0]__setup:		SETUP (POSEDGE) from_cu[6] opcode[0] ;
pos_from_cu[7]__opcode[0]__setup:		SETUP (POSEDGE) from_cu[7] opcode[0] ;
pos_from_memory[0]__opcode[0]__setup:		SETUP (POSEDGE) from_memory[0] opcode[0] ;
pos_from_memory[1]__opcode[0]__setup:		SETUP (POSEDGE) from_memory[1] opcode[0] ;
pos_from_memory[2]__opcode[0]__setup:		SETUP (POSEDGE) from_memory[2] opcode[0] ;
pos_from_memory[3]__opcode[0]__setup:		SETUP (POSEDGE) from_memory[3] opcode[0] ;
pos_from_memory[4]__opcode[0]__setup:		SETUP (POSEDGE) from_memory[4] opcode[0] ;
pos_from_memory[5]__opcode[0]__setup:		SETUP (POSEDGE) from_memory[5] opcode[0] ;
pos_from_memory[6]__opcode[0]__setup:		SETUP (POSEDGE) from_memory[6] opcode[0] ;
pos_from_memory[7]__opcode[0]__setup:		SETUP (POSEDGE) from_memory[7] opcode[0] ;
pos_mux1sel__opcode[0]__setup:		SETUP (POSEDGE) mux1sel opcode[0] ;
pos_opcode[0]__opcode[0]__setup:		SETUP (POSEDGE) opcode[0] opcode[0] ;
pos_opcode[1]__opcode[0]__setup:		SETUP (POSEDGE) opcode[1] opcode[0] ;
pos_opcode[2]__opcode[0]__setup:		SETUP (POSEDGE) opcode[2] opcode[0] ;
pos_opcode[3]__opcode[0]__setup:		SETUP (POSEDGE) opcode[3] opcode[0] ;
pos_opcode[4]__opcode[0]__setup:		SETUP (POSEDGE) opcode[4] opcode[0] ;
pos_ALUinSel__clk__hold:		HOLD (POSEDGE) ALUinSel clk ;
pos_accload__clk__hold:		HOLD (POSEDGE) accload clk ;
pos_from_cu[0]__clk__hold:		HOLD (POSEDGE) from_cu[0] clk ;
pos_from_cu[1]__clk__hold:		HOLD (POSEDGE) from_cu[1] clk ;
pos_from_cu[2]__clk__hold:		HOLD (POSEDGE) from_cu[2] clk ;
pos_from_cu[3]__clk__hold:		HOLD (POSEDGE) from_cu[3] clk ;
pos_from_cu[4]__clk__hold:		HOLD (POSEDGE) from_cu[4] clk ;
pos_from_cu[5]__clk__hold:		HOLD (POSEDGE) from_cu[5] clk ;
pos_from_cu[6]__clk__hold:		HOLD (POSEDGE) from_cu[6] clk ;
pos_from_cu[7]__clk__hold:		HOLD (POSEDGE) from_cu[7] clk ;
pos_from_memory[0]__clk__hold:		HOLD (POSEDGE) from_memory[0] clk ;
pos_from_memory[1]__clk__hold:		HOLD (POSEDGE) from_memory[1] clk ;
pos_from_memory[2]__clk__hold:		HOLD (POSEDGE) from_memory[2] clk ;
pos_from_memory[3]__clk__hold:		HOLD (POSEDGE) from_memory[3] clk ;
pos_from_memory[4]__clk__hold:		HOLD (POSEDGE) from_memory[4] clk ;
pos_from_memory[5]__clk__hold:		HOLD (POSEDGE) from_memory[5] clk ;
pos_from_memory[6]__clk__hold:		HOLD (POSEDGE) from_memory[6] clk ;
pos_from_memory[7]__clk__hold:		HOLD (POSEDGE) from_memory[7] clk ;
pos_mux1sel__clk__hold:		HOLD (POSEDGE) mux1sel clk ;
pos_mux2sel[0]__clk__hold:		HOLD (POSEDGE) mux2sel[0] clk ;
pos_mux2sel[1]__clk__hold:		HOLD (POSEDGE) mux2sel[1] clk ;
pos_opcode[0]__clk__hold:		HOLD (POSEDGE) opcode[0] clk ;
pos_opcode[1]__clk__hold:		HOLD (POSEDGE) opcode[1] clk ;
pos_opcode[2]__clk__hold:		HOLD (POSEDGE) opcode[2] clk ;
pos_opcode[3]__clk__hold:		HOLD (POSEDGE) opcode[3] clk ;
pos_opcode[4]__clk__hold:		HOLD (POSEDGE) opcode[4] clk ;
pos_zero[0]__clk__hold:		HOLD (POSEDGE) zero[0] clk ;
pos_zero[1]__clk__hold:		HOLD (POSEDGE) zero[1] clk ;
pos_zero[2]__clk__hold:		HOLD (POSEDGE) zero[2] clk ;
pos_zero[3]__clk__hold:		HOLD (POSEDGE) zero[3] clk ;
pos_zero[4]__clk__hold:		HOLD (POSEDGE) zero[4] clk ;
pos_zero[5]__clk__hold:		HOLD (POSEDGE) zero[5] clk ;
pos_zero[6]__clk__hold:		HOLD (POSEDGE) zero[6] clk ;
pos_zero[7]__clk__hold:		HOLD (POSEDGE) zero[7] clk ;
pos_ALUinSel__opcode[0]__hold:		HOLD (POSEDGE) ALUinSel opcode[0] ;
pos_from_cu[0]__opcode[0]__hold:		HOLD (POSEDGE) from_cu[0] opcode[0] ;
pos_from_cu[1]__opcode[0]__hold:		HOLD (POSEDGE) from_cu[1] opcode[0] ;
pos_from_cu[2]__opcode[0]__hold:		HOLD (POSEDGE) from_cu[2] opcode[0] ;
pos_from_cu[3]__opcode[0]__hold:		HOLD (POSEDGE) from_cu[3] opcode[0] ;
pos_from_cu[4]__opcode[0]__hold:		HOLD (POSEDGE) from_cu[4] opcode[0] ;
pos_from_cu[5]__opcode[0]__hold:		HOLD (POSEDGE) from_cu[5] opcode[0] ;
pos_from_cu[6]__opcode[0]__hold:		HOLD (POSEDGE) from_cu[6] opcode[0] ;
pos_from_cu[7]__opcode[0]__hold:		HOLD (POSEDGE) from_cu[7] opcode[0] ;
pos_from_memory[0]__opcode[0]__hold:		HOLD (POSEDGE) from_memory[0] opcode[0] ;
pos_from_memory[1]__opcode[0]__hold:		HOLD (POSEDGE) from_memory[1] opcode[0] ;
pos_from_memory[2]__opcode[0]__hold:		HOLD (POSEDGE) from_memory[2] opcode[0] ;
pos_from_memory[3]__opcode[0]__hold:		HOLD (POSEDGE) from_memory[3] opcode[0] ;
pos_from_memory[4]__opcode[0]__hold:		HOLD (POSEDGE) from_memory[4] opcode[0] ;
pos_from_memory[5]__opcode[0]__hold:		HOLD (POSEDGE) from_memory[5] opcode[0] ;
pos_from_memory[6]__opcode[0]__hold:		HOLD (POSEDGE) from_memory[6] opcode[0] ;
pos_from_memory[7]__opcode[0]__hold:		HOLD (POSEDGE) from_memory[7] opcode[0] ;
pos_mux1sel__opcode[0]__hold:		HOLD (POSEDGE) mux1sel opcode[0] ;
pos_opcode[0]__opcode[0]__hold:		HOLD (POSEDGE) opcode[0] opcode[0] ;
pos_opcode[1]__opcode[0]__hold:		HOLD (POSEDGE) opcode[1] opcode[0] ;
pos_opcode[2]__opcode[0]__hold:		HOLD (POSEDGE) opcode[2] opcode[0] ;
pos_opcode[3]__opcode[0]__hold:		HOLD (POSEDGE) opcode[3] opcode[0] ;
pos_opcode[4]__opcode[0]__hold:		HOLD (POSEDGE) opcode[4] opcode[0] ;
pos_clk__C__delay:		DELAY (POSEDGE) clk C ;
pos_clk__N__delay:		DELAY (POSEDGE) clk N ;
pos_clk__Z__delay:		DELAY (POSEDGE) clk Z ;
pos_clk__acc_out[0]__delay:		DELAY (POSEDGE) clk acc_out[0] ;
pos_clk__acc_out[1]__delay:		DELAY (POSEDGE) clk acc_out[1] ;
pos_clk__acc_out[2]__delay:		DELAY (POSEDGE) clk acc_out[2] ;
pos_clk__acc_out[3]__delay:		DELAY (POSEDGE) clk acc_out[3] ;
pos_clk__acc_out[4]__delay:		DELAY (POSEDGE) clk acc_out[4] ;
pos_clk__acc_out[5]__delay:		DELAY (POSEDGE) clk acc_out[5] ;
pos_clk__acc_out[6]__delay:		DELAY (POSEDGE) clk acc_out[6] ;
pos_clk__acc_out[7]__delay:		DELAY (POSEDGE) clk acc_out[7] ;
pos_clk__to_memory[0]__delay:		DELAY (POSEDGE) clk to_memory[0] ;
pos_clk__to_memory[7]__delay:		DELAY (POSEDGE) clk to_memory[7] ;
pos_opcode[0]__to_memory[0]__delay:		DELAY (POSEDGE) opcode[0] to_memory[0] ;
pos_opcode[0]__to_memory[0]__delay:		DELAY (POSEDGE) opcode[0] to_memory[0] ;
pos_opcode[0]__to_memory[7]__delay:		DELAY (POSEDGE) opcode[0] to_memory[7] ;
pos_opcode[0]__to_memory[7]__delay:		DELAY (POSEDGE) opcode[0] to_memory[7] ;
_11.465__11.381__delay:		DELAY 11.465 11.381 ;
_12.024__11.877__delay:		DELAY 12.024 11.877 ;
_10.508__10.478__delay:		DELAY 10.508 10.478 ;
_11.070__10.923__delay:		DELAY 11.070 10.923 ;
_11.893__11.838__delay:		DELAY 11.893 11.838 ;
_12.954__12.847__delay:		DELAY 12.954 12.847 ;
_12.762__12.615__delay:		DELAY 12.762 12.615 ;
_13.009__12.902__delay:		DELAY 13.009 12.902 ;
_12.961__12.814__delay:		DELAY 12.961 12.814 ;
_12.578__12.471__delay:		DELAY 12.578 12.471 ;
_12.440__12.293__delay:		DELAY 12.440 12.293 ;
_12.610__12.461__delay:		DELAY 12.610 12.461 ;
_10.808__10.778__delay:		DELAY 10.808 10.778 ;
_11.370__11.223__delay:		DELAY 11.370 11.223 ;
_11.796__11.741__delay:		DELAY 11.796 11.741 ;
_12.857__12.750__delay:		DELAY 12.857 12.750 ;
_12.483__12.336__delay:		DELAY 12.483 12.336 ;
_12.300__12.193__delay:		DELAY 12.300 12.193 ;
_12.642__12.495__delay:		DELAY 12.642 12.495 ;
_12.691__12.584__delay:		DELAY 12.691 12.584 ;
_12.283__12.136__delay:		DELAY 12.283 12.136 ;
_12.190__12.041__delay:		DELAY 12.190 12.041 ;
_12.707__12.677__delay:		DELAY 12.707 12.677 ;
_13.269__13.122__delay:		DELAY 13.269 13.122 ;
_8.904__8.849__delay:		DELAY 8.904 8.849 ;
_11.138__10.982__delay:		DELAY 11.138 10.982 ;
_9.498__10.412__delay:		DELAY 9.498 10.412 ;
_9.349__9.258__delay:		DELAY 9.349 9.258 ;
_8.830__8.775__delay:		DELAY 8.830 8.775 ;
_7.884__7.772__delay:		DELAY 7.884 7.772 ;
_10.482__10.462__delay:		DELAY 10.482 10.462 ;
_11.309__11.218__delay:		DELAY 11.309 11.218 ;

ENDMODEL
