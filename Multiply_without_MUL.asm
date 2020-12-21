JMP inicio

byte1: DB 3  
byte2: DB 3  


inicio:
    	MOV A, [byte1] 
   	MOV B, [byte2]
CALC:

	SUB A, 1
	ADD B, [byte2]
	CMP A, 1
	JNZ CALC ;fin
	ADD B, 48
	MOV D, 232
	MOV [D],  B
	HLT
