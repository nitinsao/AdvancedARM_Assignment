     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R0,#0	; a = 0
		MOV R1,#1	; b = 1
		MOV R3,#255	; n = 255
		MOV R4,#0	; c = 0
		MOV R5,#0x20000000	; memory address from which fibonacci number will be stored.
		ADD R4,R0,R1	; c = a + b
loop1 	CMP R4,R3		
		BLE LOOP		; if c < n, then goto loop
		B exit			; else exit
LOOP 	STR R4,[R5],#1	; Store the fibonacci number and move R5 to next location
		MOV R0,R1		; a = b
		MOV R1,R4		; b = c
		ADD R4,R0,R1	; c = a + b
		B loop1			; check the condition again
exit    B exit
loop	B loop
	ENDFUNC
	END