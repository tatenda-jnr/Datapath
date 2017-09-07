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
_10.502__10.454__delay:		DELAY 10.502 10.454 ;
_11.176__11.189__delay:		DELAY 11.176 11.189 ;
_10.052__10.004__delay:		DELAY 10.052 10.004 ;
_11.632__11.669__delay:		DELAY 11.632 11.669 ;
_11.181__11.218__delay:		DELAY 11.181 11.218 ;
_11.390__11.403__delay:		DELAY 11.390 11.403 ;
_11.433__11.446__delay:		DELAY 11.433 11.446 ;
_10.988__11.001__delay:		DELAY 10.988 11.001 ;
_11.238__11.275__delay:		DELAY 11.238 11.275 ;
_10.836__10.849__delay:		DELAY 10.836 10.849 ;
_10.532__10.553__delay:		DELAY 10.532 10.553 ;
_11.511__11.509__delay:		DELAY 11.511 11.509 ;
_11.438__11.436__delay:		DELAY 11.438 11.436 ;
_11.242__11.240__delay:		DELAY 11.242 11.240 ;
_10.878__10.876__delay:		DELAY 10.878 10.876 ;
_11.180__11.178__delay:		DELAY 11.180 11.178 ;
_10.650__10.648__delay:		DELAY 10.650 10.648 ;
_11.302__11.300__delay:		DELAY 11.302 11.300 ;
_10.505__10.479__delay:		DELAY 10.505 10.479 ;
_7.818__7.770__delay:		DELAY 7.818 7.770 ;
_9.951__9.964__delay:		DELAY 9.951 9.964 ;
_9.253__9.205__delay:		DELAY 9.253 9.205 ;
_9.057__9.070__delay:		DELAY 9.057 9.070 ;
_8.130__8.082__delay:		DELAY 8.130 8.082 ;
_8.014__7.919__delay:		DELAY 8.014 7.919 ;
_9.904__9.856__delay:		DELAY 9.904 9.856 ;
_10.630__10.643__delay:		DELAY 10.630 10.643 ;

ENDMODEL
