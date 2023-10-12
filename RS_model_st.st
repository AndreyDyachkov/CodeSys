PROGRAM PLC_PRG
VAR
	ixStart: BOOL;
	ixStop: BOOL;
	qxKM1: BOOL;
	mwMyInt: INT;
END_VAR

qxKM1:= (ixStart OR qxKM1) AND NOT ixStop;

IF qxKM1 = TRUE THEN
	mwMyInt:= mwMyInt + 1;
END_IF