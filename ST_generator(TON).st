// into the upper window in CodeSys:
PROGRAM PLC_PRG
VAR
	xEnable0: BOOL;
	tMyTime: TIME;
	xPulse0: BOOL;
	MyTON0: TON;
	xGen1s: BOOL;
	xWork0: BOOL;
END_VAR

// into the lower window in CodeSys:
xWork0 := xEnable0 AND NOT xPulse0;
MyTON0 (IN := xWork0, PT := T#1S);
xPulse0 := MyTON0.Q;
tMyTime := MyTON0.ET;
xGen1s := (tMyTime <= T#500MS);