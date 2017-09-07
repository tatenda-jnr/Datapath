


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
