;http://schweigi.github.io/assembler-simulator/index.html

	JMP start
min: DB 0 ; Variable
max: DB 5 ; Variable

start:
	
	MOV D, 232	; Point to output
	CALL prepare

prepare: MOV B, [max]
	 ADD B, 1
.loop:
	MOV A, C	; 
	ADD A, 48
	MOV [D], A	; Write to output
	INC C  
	CMP B, C	; Check if end
	JNZ .loop	; jump if not
	MOV C, [min]	; Point to var 
	JMP .loop
