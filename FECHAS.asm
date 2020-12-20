JMP inicio

nacimiento: DB 42  ;refers to 1942
hoy:    DB 20      ; refers to 2020
cien: DB 100

inicio:
    MOV A, [nacimiento] 
    MOV B, [hoy]
    CMP A, B
    JB menor
    JA mayor
mayor:
    MOV C, [cien]
    SUB C, [nacimiento]
    ADD C, [hoy]
    CMP C, 9
    JB UNIDAD
    JA DECENA
    
menor:
    SUB B, A
    JMP UNIDAD
    
DECENA:
	MOV D, 232

	MOV A, C
	DIV 10

	MOV B, A
	ADD B, 48
	MOV [D],  B

	MUL 10
	MOV B, C
	SUB B,A
	ADD B, 48
	INC D
	MOV [D],  B
	HLT

UNIDAD:
	ADD A , 48
	MOV [D], A
	HLT
	
