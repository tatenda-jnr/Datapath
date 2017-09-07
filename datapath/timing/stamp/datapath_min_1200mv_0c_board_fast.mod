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
 This file contains Fast Corner delays for the design using part EP4CE6E22C6
 with speed grade M, core voltage 1.2V, and temperature 0 Celsius

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
_7.616__7.944__delay:		DELAY 7.616 7.944 ;
_8.092__8.292__delay:		DELAY 8.092 8.292 ;
_6.879__7.208__delay:		DELAY 6.879 7.208 ;
_7.318__7.518__delay:		DELAY 7.318 7.518 ;
_8.141__8.300__delay:		DELAY 8.141 8.300 ;
_8.752__8.952__delay:		DELAY 8.752 8.952 ;
_8.589__8.789__delay:		DELAY 8.589 8.789 ;
_8.827__9.027__delay:		DELAY 8.827 9.027 ;
_8.753__8.953__delay:		DELAY 8.753 8.953 ;
_8.518__8.718__delay:		DELAY 8.518 8.718 ;
_8.393__8.593__delay:		DELAY 8.393 8.593 ;
_8.504__8.704__delay:		DELAY 8.504 8.704 ;
_7.060__7.389__delay:		DELAY 7.060 7.389 ;
_7.499__7.699__delay:		DELAY 7.499 7.699 ;
_8.093__8.252__delay:		DELAY 8.093 8.252 ;
_8.704__8.904__delay:		DELAY 8.704 8.904 ;
_8.422__8.622__delay:		DELAY 8.422 8.622 ;
_8.339__8.539__delay:		DELAY 8.339 8.539 ;
_8.516__8.716__delay:		DELAY 8.516 8.716 ;
_8.610__8.810__delay:		DELAY 8.610 8.810 ;
_8.271__8.471__delay:		DELAY 8.271 8.471 ;
_8.244__8.444__delay:		DELAY 8.244 8.444 ;
_8.477__8.806__delay:		DELAY 8.477 8.806 ;
_8.916__9.116__delay:		DELAY 8.916 9.116 ;
_6.207__6.366__delay:		DELAY 6.207 6.366 ;
_7.575__7.775__delay:		DELAY 7.575 7.775 ;
_6.494__7.356__delay:		DELAY 6.494 7.356 ;
_6.402__6.602__delay:		DELAY 6.402 6.602 ;
_6.127__6.286__delay:		DELAY 6.127 6.286 ;
_5.496__5.613__delay:		DELAY 5.496 5.613 ;
_7.100__7.399__delay:		DELAY 7.100 7.399 ;
_7.726__7.926__delay:		DELAY 7.726 7.926 ;

ENDMODEL
