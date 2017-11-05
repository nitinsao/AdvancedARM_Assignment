     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R1, #6
		MOV R2, #8
while	CMP R1, R2
		IT EQ
		BEQ loop
		ITE GT
		SUBGT R1, R1, R2
		SUBLE R2, R2, R1
		B while
loop	B loop
	ENDFUNC
	END