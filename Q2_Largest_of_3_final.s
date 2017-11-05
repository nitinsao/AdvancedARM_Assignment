     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R1, #13
		MOV R2, #8
		MOV R3, #11
		CMP R1, R2
		IT GE
		BGE chk1
		CMP R2, R3
		ITE GE
		MOVGE R4, r2
		MOVLT R4, R3
		B exit
chk1	CMP R1, R3
		ITE GE
		MOVGE R4, R1
		MOVLT R4, R3
exit	B exit
	ENDFUNC
	END