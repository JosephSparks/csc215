; ASCII characters
CR	EQU	0DH   ; Carriage Return
LF	EQU	0AH   ; Line Feed
CTRLZ	EQU	1AH
NUM	EQU	30H
        

; CP/M BDOS Functions
RCONF	EQU	1     ; Read CON: into A
WCONF	EQU	2     ; Write A to CON:
RBUFF	EQU	10    ; Read a console line

; CP/M Addresses
RBOOT	EQU	0     ; Re-boot CP/M system
BDOS	EQU	5     ; System call entry
TPA	EQU	100H  ; Transient Program Area

	ORG	TPA
        
START	LXI	SP, STAK
START1:	CALL	CCRLF
	LXI	H, SINON
	CALL	COMSG
START2:	CALL	TWOCR
	CALL	GETINT
	CALL	CCRLF
	CALL	GETIN2
	MOV	E, B
	MVI	C, WCONF
	CALL	BDOS
	CALL	CCRLF
	HLT
        
        


SINON:	DB	'WELCOME TO OUR SUBTRACT PROGRAM',CR,LF,0

TWOCR:	CALL	CCRLF

CCRLF:	MVI	A,CR
	CALL	CO
	MVI	A,LF
	JMP	CO

; Character in register A output to console
CO:	PUSH	B     ; Save registers
	PUSH	D
	PUSH	H
	MVI	C, WCONF
; Select function
	MOV	E,A       ; Character to E
	CALL	BDOS  ; Output by CP/M
	POP	H     ; Restore registers
	POP	D
	POP	B
	RET

CI:	PUSH	B     ; Save registers
	PUSH	D
	PUSH	H        
	MVI	C,RCONF   ; Read function
	CALL	BDOS
	ANI	7FH   ; Mask to 7 bits
	POP	H     ; Restore registers
	POP	D
	POP	B
	RET

CIMSG:	PUSH	B               ; Save registers
	PUSH	D
	PUSH	H
	LXI	H,INBUF+1       ; Zero character counter
	MVI	M,0
	DCX	H               ; Set maximum line length
	MVI	M,80
	XCHG                    ; INBUF pointer to DE register
	MVI	C,RBUFF         ; Set up Read Buffer function
	CALL	BDOS            ; Input a line
	LXI	H,INBUF+1       ; Get character counter
	MOV	E,M             ; into LSB of DE register pair
	MVI	D,0             ; Zero MSB
	DAD	D               ; Add length to start
	INX	H               ; plus one points to end
	MVI	M,0             ; Insert terminator at end
	POP	H               ; Restore all registers
	POP	D
	POP	B
	RET

COMSG:	MOV	A,M     ; Get a character
	ORA	A       ; Zero is the terminator
	RZ            ; Return on zero
	CALL	CO      ; else output the character
	INX	H       ; point to the next one
	JMP	COMSG   ; and continue

SPMSG:	XTHL                    ; Get "return address" to HL
	XRA	A               ; Clear flags and accumulator
	ADD	M               ; Get one message character            
	INX	H               ; Point to next
	XTHL                    ; Restore stack for
	RZ                      ; return if done
	CALL	CO              ; else display character
	JMP	SPMSG           ; and do another

GETINT:	CALL	SPMSG
	DB	'ENTER A SINGLE DIGIT POSITIVE INTEGER LESS THAN NINE',CR,LF,0
	CALL	CIMSG
	CALL	CCRLF
	LDA	INBUF+2
	MOV	B, A
	RET

GETIN2:	CALL	SPMSG
	DB	'ENTER A SINGLE DIGIT POSITIVE INTEGER GREATER THAN THE FIRST',CR,LF,0
	CALL	CIMSG
	CALL	CCRLF
	SUB	A
	LDA	INBUF+2
	SUB	B
	ADI	NUM
	MOV	B, A
	RET
        
	DS	64
STAK:	DB	0     ; Top of stack

 
END
