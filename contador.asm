;http://schweigi.github.io/assembler-simulator/index.html

	JMP start
min: DB 1 ; Variable
max: DB 5 ; Variable

start:
	
	MOV D, 232	; Point to output
	CALL print
        HLT             ; Stop execution

print:	MOV C, [min]	; Point to var 
	MOV B, [max]
	ADD B, 1
.loop:
	MOV A, C	; 
	ADD A, 48
	MOV [D], A	; Write to output
	INC C  
	CMP B, C	; Check if end
	JNZ .loop	; jump if not
	JMP print ; reiniciar a 1

	RET
