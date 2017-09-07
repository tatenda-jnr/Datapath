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
DESIGN "mux21";
DATE "09/06/2017 10:32:24";
PROGRAM "Quartus Prime";



INPUT A[0];
INPUT SEL;
INPUT B[0];
INPUT B[1];
INPUT A[1];
INPUT A[2];
INPUT B[2];
INPUT B[3];
INPUT A[3];
INPUT B[4];
INPUT A[4];
INPUT A[5];
INPUT B[5];
INPUT B[6];
INPUT A[6];
INPUT A[7];
INPUT B[7];
OUTPUT output[0];
OUTPUT output[1];
OUTPUT output[2];
OUTPUT output[3];
OUTPUT output[4];
OUTPUT output[5];
OUTPUT output[6];
OUTPUT output[7];

/*Arc definitions start here*/
___7.364__delay:		DELAY  7.364 ;
___7.768__delay:		DELAY  7.768 ;
___7.762__delay:		DELAY  7.762 ;
___7.369__delay:		DELAY  7.369 ;
___7.896__delay:		DELAY  7.896 ;
___5.139__delay:		DELAY  5.139 ;
___7.828__delay:		DELAY  7.828 ;
___7.670__delay:		DELAY  7.670 ;
___7.213__delay:		DELAY  7.213 ;
___7.833__delay:		DELAY  7.833 ;
___7.661__delay:		DELAY  7.661 ;
___7.303__delay:		DELAY  7.303 ;
___8.171__delay:		DELAY  8.171 ;
___5.328__delay:		DELAY  5.328 ;
___7.356__delay:		DELAY  7.356 ;
___8.292__delay:		DELAY  8.292 ;
_7.317__7.288__delay:		DELAY 7.317 7.288 ;
_7.725__7.692__delay:		DELAY 7.725 7.692 ;
_7.556__7.531__delay:		DELAY 7.556 7.531 ;
_8.218__8.238__delay:		DELAY 8.218 8.238 ;
_7.719__7.665__delay:		DELAY 7.719 7.665 ;
_7.441__7.387__delay:		DELAY 7.441 7.387 ;
_7.772__7.708__delay:		DELAY 7.772 7.708 ;
_7.790__7.762__delay:		DELAY 7.790 7.762 ;

ENDMODEL
