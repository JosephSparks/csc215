; What is the difference between MOV and MVI?
; Written by Kevin Cole 2021.01.14
;
; Slowly, trace through this program
; and determine what is in register B
; after the MOV instruction is executed
; but before the MVI instruction is executed.
; Then determine what is in register B
; after the MVI instruction is executed.
	
	ORG	000o

	LDA	100o
	MOV	B,A	; What is in the accumulator (register A) now?
	MVI	B,100o	; What is in the accumulator (register A) now?
	HLT

	ORG	100o

	DB	005o

	END
