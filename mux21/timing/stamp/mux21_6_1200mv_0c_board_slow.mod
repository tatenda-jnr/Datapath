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
___6.471__delay:		DELAY  6.471 ;
___6.826__delay:		DELAY  6.826 ;
___6.814__delay:		DELAY  6.814 ;
___6.464__delay:		DELAY  6.464 ;
___6.943__delay:		DELAY  6.943 ;
___4.662__delay:		DELAY  4.662 ;
___6.877__delay:		DELAY  6.877 ;
___6.734__delay:		DELAY  6.734 ;
___6.330__delay:		DELAY  6.330 ;
___6.883__delay:		DELAY  6.883 ;
___6.721__delay:		DELAY  6.721 ;
___6.407__delay:		DELAY  6.407 ;
___7.194__delay:		DELAY  7.194 ;
___4.823__delay:		DELAY  4.823 ;
___6.459__delay:		DELAY  6.459 ;
___7.277__delay:		DELAY  7.277 ;
_6.425__6.392__delay:		DELAY 6.425 6.392 ;
_6.822__6.754__delay:		DELAY 6.822 6.754 ;
_6.642__6.597__delay:		DELAY 6.642 6.597 ;
_7.232__7.229__delay:		DELAY 7.232 7.229 ;
_6.827__6.740__delay:		DELAY 6.827 6.740 ;
_6.534__6.493__delay:		DELAY 6.534 6.493 ;
_6.830__6.766__delay:		DELAY 6.830 6.766 ;
_6.860__6.806__delay:		DELAY 6.860 6.806 ;

ENDMODEL
