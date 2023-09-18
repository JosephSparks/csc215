;
; NAME:    mult.asm
; AUTHOR:  Kevin Cole ("The Ubuntourist") <kevin.cole@novawebdevelopment.org>
; LASTMOD: 2022.10.02 (je) <jeff.elkner@novawebdevelopment.org> to make it work
;          with asm80
;
; DESCRIPTION:
;
;     This is the assembly source code that produces the same machine
;     op codes as shown by the second example (multiply two numbers) in
;     the Altair 8800 Operator's Manual.
;
;         asm80 mult.asm
;
;     which will output the 8080 machine language mult.com file. Change the
;     values of MPCD and MPLY to compute a different product. The result will
;     appear at address 0050h in memory.
;

; Code segment:

MPCD    EQU     10h     ; Muliplicand 10h (16).
MPLY    EQU     3h      ; Muliplier 3h (3).
TOTAL 	EQU	0050h	; Reserve 2 bytes (1 word) of unintialized storage

START:	MVI	A,MPLY	; Multiplier to A Register
	MVI	D,MPCD	; Multiplicand to D,E Registers
	MVI	E,000h
	LXI	H,000h	; Clear H,L Registers to initialize Partial Product
	MVI	B,008h	; Iteration Count (8) to B Register
LOOP:	DAD	H	; Shift Partial Product left into Carry (H&L)
	RAL		; Rotate Multiplier Bit to Carry
	JNC	NEXT	; Test Multiplier at Carry
	DAD	D	; Add Multiplicand to Partial Product (D&E)
			;   if Carry =1
	ACI	000h	; (Add Carry Bit)
NEXT:	DCR	B	; Decrement Iteration Counter
	JNZ	LOOP	; Check Iterations
	SHLD	TOTAL	; Store Answer in Locations 0050h,0051h
	HLT		; Halt and Catch Fire (HCF)

	END		; End
