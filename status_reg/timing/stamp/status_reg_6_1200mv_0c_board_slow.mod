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
DESIGN "status_reg";
DATE "09/06/2017 15:08:04";
PROGRAM "Quartus Prime";



INPUT in_N;
INPUT CLK;
INPUT in_C;
INPUT in_Z;
OUTPUT N;
OUTPUT C;
OUTPUT Z;

/*Arc definitions start here*/
pos_in_C__CLK__setup:		SETUP (POSEDGE) in_C CLK ;
pos_in_N__CLK__setup:		SETUP (POSEDGE) in_N CLK ;
pos_in_Z__CLK__setup:		SETUP (POSEDGE) in_Z CLK ;
pos_in_C__CLK__hold:		HOLD (POSEDGE) in_C CLK ;
pos_in_N__CLK__hold:		HOLD (POSEDGE) in_N CLK ;
pos_in_Z__CLK__hold:		HOLD (POSEDGE) in_Z CLK ;
pos_CLK__C__delay:		DELAY (POSEDGE) CLK C ;
pos_CLK__N__delay:		DELAY (POSEDGE) CLK N ;
pos_CLK__Z__delay:		DELAY (POSEDGE) CLK Z ;

ENDMODEL
