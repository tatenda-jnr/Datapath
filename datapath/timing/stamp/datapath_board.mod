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
 with speed grade 6, core voltage 1.2V, and temperature 85 Celsius

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
_12.769__12.825__delay:		DELAY 12.769 12.825 ;
_13.441__13.459__delay:		DELAY 13.441 13.459 ;
_11.544__11.656__delay:		DELAY 11.544 11.656 ;
_12.215__12.233__delay:		DELAY 12.215 12.233 ;
_13.368__13.385__delay:		DELAY 13.368 13.385 ;
_14.562__14.580__delay:		DELAY 14.562 14.580 ;
_14.310__14.328__delay:		DELAY 14.310 14.328 ;
_14.624__14.642__delay:		DELAY 14.624 14.642 ;
_14.511__14.529__delay:		DELAY 14.511 14.529 ;
_14.127__14.145__delay:		DELAY 14.127 14.145 ;
_13.908__13.926__delay:		DELAY 13.908 13.926 ;
_14.093__14.111__delay:		DELAY 14.093 14.111 ;
_11.892__12.004__delay:		DELAY 11.892 12.004 ;
_12.563__12.581__delay:		DELAY 12.563 12.581 ;
_13.254__13.271__delay:		DELAY 13.254 13.271 ;
_14.448__14.466__delay:		DELAY 14.448 14.466 ;
_13.989__14.007__delay:		DELAY 13.989 14.007 ;
_13.829__13.847__delay:		DELAY 13.829 13.847 ;
_14.158__14.176__delay:		DELAY 14.158 14.176 ;
_14.259__14.277__delay:		DELAY 14.259 14.277 ;
_13.724__13.742__delay:		DELAY 13.724 13.742 ;
_13.643__13.661__delay:		DELAY 13.643 13.661 ;
_14.206__14.318__delay:		DELAY 14.206 14.318 ;
_14.877__14.895__delay:		DELAY 14.877 14.895 ;
_10.020__10.037__delay:		DELAY 10.020 10.037 ;
_12.426__12.440__delay:		DELAY 12.426 12.440 ;
_10.654__11.773__delay:		DELAY 10.654 11.773 ;
_10.508__10.526__delay:		DELAY 10.508 10.526 ;
_9.941__9.958__delay:		DELAY 9.941 9.958 ;
_8.884__8.852__delay:		DELAY 8.884 8.852 ;
_11.713__11.820__delay:		DELAY 11.713 11.820 ;
_12.690__12.708__delay:		DELAY 12.690 12.708 ;

ENDMODEL
