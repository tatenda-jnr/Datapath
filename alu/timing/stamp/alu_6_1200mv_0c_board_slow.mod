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
DESIGN "alu";
DATE "09/06/2017 22:01:13";
PROGRAM "Quartus Prime";



INPUT inp_b[0];
INPUT in_acc[0];
INPUT in_acc[1];
INPUT inp_b[1];
INPUT in_acc[2];
INPUT inp_b[2];
INPUT in_acc[3];
INPUT inp_b[3];
INPUT inp_b[4];
INPUT in_acc[4];
INPUT inp_b[5];
INPUT in_acc[5];
INPUT inp_b[6];
INPUT in_acc[6];
INPUT in_acc[7];
INPUT inp_b[7];
INPUT opcode[1];
INPUT opcode[4];
INPUT opcode[0];
INPUT opcode[2];
INPUT opcode[3];
OUTPUT N;
OUTPUT C;
OUTPUT Z;
OUTPUT out_alu[0];
OUTPUT out_alu[1];
OUTPUT out_alu[2];
OUTPUT out_alu[3];
OUTPUT out_alu[4];
OUTPUT out_alu[5];
OUTPUT out_alu[6];
OUTPUT out_alu[7];

/*Arc definitions start here*/
pos_in_acc[0]__opcode[0]__setup:		SETUP (POSEDGE) in_acc[0] opcode[0] ;
pos_in_acc[1]__opcode[0]__setup:		SETUP (POSEDGE) in_acc[1] opcode[0] ;
pos_in_acc[2]__opcode[0]__setup:		SETUP (POSEDGE) in_acc[2] opcode[0] ;
pos_in_acc[3]__opcode[0]__setup:		SETUP (POSEDGE) in_acc[3] opcode[0] ;
pos_in_acc[4]__opcode[0]__setup:		SETUP (POSEDGE) in_acc[4] opcode[0] ;
pos_in_acc[5]__opcode[0]__setup:		SETUP (POSEDGE) in_acc[5] opcode[0] ;
pos_in_acc[6]__opcode[0]__setup:		SETUP (POSEDGE) in_acc[6] opcode[0] ;
pos_in_acc[7]__opcode[0]__setup:		SETUP (POSEDGE) in_acc[7] opcode[0] ;
pos_inp_b[0]__opcode[0]__setup:		SETUP (POSEDGE) inp_b[0] opcode[0] ;
pos_inp_b[1]__opcode[0]__setup:		SETUP (POSEDGE) inp_b[1] opcode[0] ;
pos_inp_b[2]__opcode[0]__setup:		SETUP (POSEDGE) inp_b[2] opcode[0] ;
pos_inp_b[3]__opcode[0]__setup:		SETUP (POSEDGE) inp_b[3] opcode[0] ;
pos_inp_b[4]__opcode[0]__setup:		SETUP (POSEDGE) inp_b[4] opcode[0] ;
pos_inp_b[5]__opcode[0]__setup:		SETUP (POSEDGE) inp_b[5] opcode[0] ;
pos_inp_b[6]__opcode[0]__setup:		SETUP (POSEDGE) inp_b[6] opcode[0] ;
pos_inp_b[7]__opcode[0]__setup:		SETUP (POSEDGE) inp_b[7] opcode[0] ;
pos_opcode[0]__opcode[0]__setup:		SETUP (POSEDGE) opcode[0] opcode[0] ;
pos_opcode[1]__opcode[0]__setup:		SETUP (POSEDGE) opcode[1] opcode[0] ;
pos_opcode[2]__opcode[0]__setup:		SETUP (POSEDGE) opcode[2] opcode[0] ;
pos_opcode[3]__opcode[0]__setup:		SETUP (POSEDGE) opcode[3] opcode[0] ;
pos_opcode[4]__opcode[0]__setup:		SETUP (POSEDGE) opcode[4] opcode[0] ;
pos_in_acc[0]__opcode[0]__hold:		HOLD (POSEDGE) in_acc[0] opcode[0] ;
pos_in_acc[1]__opcode[0]__hold:		HOLD (POSEDGE) in_acc[1] opcode[0] ;
pos_in_acc[2]__opcode[0]__hold:		HOLD (POSEDGE) in_acc[2] opcode[0] ;
pos_in_acc[3]__opcode[0]__hold:		HOLD (POSEDGE) in_acc[3] opcode[0] ;
pos_in_acc[4]__opcode[0]__hold:		HOLD (POSEDGE) in_acc[4] opcode[0] ;
pos_in_acc[5]__opcode[0]__hold:		HOLD (POSEDGE) in_acc[5] opcode[0] ;
pos_in_acc[6]__opcode[0]__hold:		HOLD (POSEDGE) in_acc[6] opcode[0] ;
pos_in_acc[7]__opcode[0]__hold:		HOLD (POSEDGE) in_acc[7] opcode[0] ;
pos_inp_b[0]__opcode[0]__hold:		HOLD (POSEDGE) inp_b[0] opcode[0] ;
pos_inp_b[1]__opcode[0]__hold:		HOLD (POSEDGE) inp_b[1] opcode[0] ;
pos_inp_b[2]__opcode[0]__hold:		HOLD (POSEDGE) inp_b[2] opcode[0] ;
pos_inp_b[3]__opcode[0]__hold:		HOLD (POSEDGE) inp_b[3] opcode[0] ;
pos_inp_b[4]__opcode[0]__hold:		HOLD (POSEDGE) inp_b[4] opcode[0] ;
pos_inp_b[5]__opcode[0]__hold:		HOLD (POSEDGE) inp_b[5] opcode[0] ;
pos_inp_b[6]__opcode[0]__hold:		HOLD (POSEDGE) inp_b[6] opcode[0] ;
pos_inp_b[7]__opcode[0]__hold:		HOLD (POSEDGE) inp_b[7] opcode[0] ;
pos_opcode[0]__opcode[0]__hold:		HOLD (POSEDGE) opcode[0] opcode[0] ;
pos_opcode[1]__opcode[0]__hold:		HOLD (POSEDGE) opcode[1] opcode[0] ;
pos_opcode[2]__opcode[0]__hold:		HOLD (POSEDGE) opcode[2] opcode[0] ;
pos_opcode[3]__opcode[0]__hold:		HOLD (POSEDGE) opcode[3] opcode[0] ;
pos_opcode[4]__opcode[0]__hold:		HOLD (POSEDGE) opcode[4] opcode[0] ;
pos_opcode[0]__C__delay:		DELAY (POSEDGE) opcode[0] C ;
pos_opcode[0]__N__delay:		DELAY (POSEDGE) opcode[0] N ;
pos_opcode[0]__Z__delay:		DELAY (POSEDGE) opcode[0] Z ;
pos_opcode[0]__out_alu[0]__delay:		DELAY (POSEDGE) opcode[0] out_alu[0] ;
pos_opcode[0]__out_alu[0]__delay:		DELAY (POSEDGE) opcode[0] out_alu[0] ;
pos_opcode[0]__out_alu[7]__delay:		DELAY (POSEDGE) opcode[0] out_alu[7] ;
pos_opcode[0]__out_alu[7]__delay:		DELAY (POSEDGE) opcode[0] out_alu[7] ;
_9.258__9.216__delay:		DELAY 9.258 9.216 ;
_9.915__9.881__delay:		DELAY 9.915 9.881 ;
_8.872__8.830__delay:		DELAY 8.872 8.830 ;
_10.355__10.321__delay:		DELAY 10.355 10.321 ;
_9.949__9.915__delay:		DELAY 9.949 9.915 ;
_10.094__10.071__delay:		DELAY 10.094 10.071 ;
_10.150__10.127__delay:		DELAY 10.150 10.127 ;
_9.754__9.731__delay:		DELAY 9.754 9.731 ;
_10.013__9.979__delay:		DELAY 10.013 9.979 ;
_9.601__9.604__delay:		DELAY 9.601 9.604 ;
_9.344__9.303__delay:		DELAY 9.344 9.303 ;
_10.223__10.200__delay:		DELAY 10.223 10.200 ;
_10.173__10.150__delay:		DELAY 10.173 10.150 ;
_9.992__9.969__delay:		DELAY 9.992 9.969 ;
_9.685__9.662__delay:		DELAY 9.685 9.662 ;
_9.939__9.916__delay:		DELAY 9.939 9.916 ;
_9.485__9.462__delay:		DELAY 9.485 9.462 ;
_10.058__10.035__delay:		DELAY 10.058 10.035 ;
_9.333__9.256__delay:		DELAY 9.333 9.256 ;
_6.871__6.829__delay:		DELAY 6.871 6.829 ;
_8.793__8.801__delay:		DELAY 8.793 8.801 ;
_8.152__8.110__delay:		DELAY 8.152 8.110 ;
_7.992__8.000__delay:		DELAY 7.992 8.000 ;
_7.165__7.123__delay:		DELAY 7.165 7.123 ;
_7.055__6.967__delay:		DELAY 7.055 6.967 ;
_8.736__8.694__delay:		DELAY 8.736 8.694 ;
_9.408__9.416__delay:		DELAY 9.408 9.416 ;

ENDMODEL
