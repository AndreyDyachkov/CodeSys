// into the upper window in CodeSys:
PROGRAM PLC_PRG
VAR
	ixStart: BOOL;
	ixStop: BOOL;
	qxKM1: BOOL;
	mwMyInt: INT;
END_VAR

// into the lower window in CodeSys:
qxKM1:= (ixStart OR qxKM1) AND NOT ixStop;

IF qxKM1 = TRUE THEN
	mwMyInt:= mwMyInt + 1;
END_IF
