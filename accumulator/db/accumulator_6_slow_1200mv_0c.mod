


INPUT load;
INPUT input[0];
INPUT CLK;
INPUT input[1];
INPUT input[2];
INPUT input[3];
INPUT input[4];
INPUT input[5];
INPUT input[6];
INPUT input[7];
OUTPUT output[0];
OUTPUT output[1];
OUTPUT output[2];
OUTPUT output[3];
OUTPUT output[4];
OUTPUT output[5];
OUTPUT output[6];
OUTPUT output[7];

/*Arc definitions start here*/
pos_input[0]__CLK__setup:		SETUP (POSEDGE) input[0] CLK ;
pos_input[1]__CLK__setup:		SETUP (POSEDGE) input[1] CLK ;
pos_input[2]__CLK__setup:		SETUP (POSEDGE) input[2] CLK ;
pos_input[3]__CLK__setup:		SETUP (POSEDGE) input[3] CLK ;
pos_input[4]__CLK__setup:		SETUP (POSEDGE) input[4] CLK ;
pos_input[5]__CLK__setup:		SETUP (POSEDGE) input[5] CLK ;
pos_input[6]__CLK__setup:		SETUP (POSEDGE) input[6] CLK ;
pos_input[7]__CLK__setup:		SETUP (POSEDGE) input[7] CLK ;
pos_load__CLK__setup:		SETUP (POSEDGE) load CLK ;
pos_input[0]__CLK__hold:		HOLD (POSEDGE) input[0] CLK ;
pos_input[1]__CLK__hold:		HOLD (POSEDGE) input[1] CLK ;
pos_input[2]__CLK__hold:		HOLD (POSEDGE) input[2] CLK ;
pos_input[3]__CLK__hold:		HOLD (POSEDGE) input[3] CLK ;
pos_input[4]__CLK__hold:		HOLD (POSEDGE) input[4] CLK ;
pos_input[5]__CLK__hold:		HOLD (POSEDGE) input[5] CLK ;
pos_input[6]__CLK__hold:		HOLD (POSEDGE) input[6] CLK ;
pos_input[7]__CLK__hold:		HOLD (POSEDGE) input[7] CLK ;
pos_load__CLK__hold:		HOLD (POSEDGE) load CLK ;
pos_CLK__output[0]__delay:		DELAY (POSEDGE) CLK output[0] ;
pos_CLK__output[1]__delay:		DELAY (POSEDGE) CLK output[1] ;
pos_CLK__output[2]__delay:		DELAY (POSEDGE) CLK output[2] ;
pos_CLK__output[3]__delay:		DELAY (POSEDGE) CLK output[3] ;
pos_CLK__output[4]__delay:		DELAY (POSEDGE) CLK output[4] ;
pos_CLK__output[5]__delay:		DELAY (POSEDGE) CLK output[5] ;
pos_CLK__output[6]__delay:		DELAY (POSEDGE) CLK output[6] ;
pos_CLK__output[7]__delay:		DELAY (POSEDGE) CLK output[7] ;

ENDMODEL
