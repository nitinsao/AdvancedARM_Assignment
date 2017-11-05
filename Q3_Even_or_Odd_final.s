     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R1, #5
		AND R2, R1, #1	; If R2 = 1, R1 is odd, otherwise even
		;CMP R2, #1
		;IT EQ
loop	B loop
	ENDFUNC
	END