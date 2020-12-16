; Simple example
; Writes Hello World to the output

	JMP start
par:	    DB "par"
	    DB 0
impar:	    DB "impar"
	    DB 0
mibyte1:    DB 5        ; Variable
mibyte2:    DB 4	; 


start:
	MOV D, 232
	MOV B, 0
	MOV A,[mibyte2]		; Point to var 
Calc:
	SUB A, 2
	CMP A, 1
	MOV C, impar
	JZ sonimp
	CMP A, 0
	MOV C, par
	JZ sonpar
	JMP Calc               

sonimp:
	
	MOV A, [C]	; Get char from var
	MOV [D], A	; Write to output
	INC C
	INC D  
	CMP B, [C]	; Check if end
	JNZ sonimp
	JMP END
	
sonpar:
	
	MOV A, [C]	; Get char from var
	MOV [D], A	; Write to output
	INC C
	INC D  
	CMP B, [C]	; Check if end
	JNZ sonpar


END:
	HLT		; Stop execution
