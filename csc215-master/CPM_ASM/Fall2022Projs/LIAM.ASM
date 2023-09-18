CR		EQU	0DH
LF		EQU	0AH
CTRLZ		EQU	1AH

RCONF		EQU	1
WCONF		EQU	2
RBUFF		EQU	10

RBOOT		EQU	0
BDOS		EQU	5
TPA		EQU	100H

		ORG	TPA

START:		LXI	SP,STAK
START1:		CALL	CCRLF
		LXI	H,SINON
		CALL	COMSG
START2:		CALL	TWOCR
		CALL	SPMSG
		DB	'REQUESTING NUMBER FROM CONSOLE',CR,LF,0
		CALL	GETYN
		JNZ	START3
		CALL	SPMSG
		DB	LF,'YOUR ANSWER WAS "YES!"',0
		JMP	START2
START3:		CALL	SPMSG
		DB	LF,'YOU SAID "NO!"',0
		JMP	START2

SINON:		DB	'SIGN-ON MESSAGE',CR,LF,0

CI:		PUSH	B
		PUSH	D
		PUSH	H
		MVI	C,RCONF
		CALL	BDOS
		ANI	7FH
		POP	H
		POP	D
		POP	B
		RET

CO:		PUSH	B
		PUSH	D
		PUSH	H
		MVI	C,WCONF
		MOV	E,A
		CALL	BDOS
		POP	H
		POP	D
		POP	B
		RET

TWOCR:		CALL	CCRLF

CCRLF:		MVI	A,CR
		CALL	CO
		MVI	A,LF
		JMP	CO

COMSG:		MOV	A,M
		ORA	A
		RZ
		CALL	CO
		INX	H
		JMP	COMSG

MULTI:          PUSH    PSW
                MVI     B,0     ; Initialize most significant byte of result
                MVI     E,9     ; Bit counter
MULT0:          MOV     A,C     ; Rotate least significant bit of...
                RAR             ; ...multiplier to carry and shift...
                MOV     C,A     ; ...low-order byte of result
                DCR     E       ; Countdown to zero (decrement bit counter)
                JZ      MULT2   ; If zeroed, we're done
                MOV     A,B
                JNC     MULT1   ; If carry bit = 1...
                ADD     D       ; ...add multiplicand to high-order byte
MULT1:          RAR             ; Else... shift high-order byte of result
                MOV     B,A
                JMP     MULT0   ; Lather, rinse, repeat
MULT2:          POP     PSW
                RET             ; Return

DIVI:           PUSH    PSW
                MOV     A,D     ; Negate the divisor
                CMA             ;    "    "     "
                MOV     D,A     ;    "    "     "
                MOV     A,E     ;    "    "     "
                CMA             ;    "    "     "
                MOV     E,A     ;    "    "     "
                INX     D       ; For two's complement
                LXI     H,0     ; Initial value for remainder
                MVI     A,17    ; Initialize loop counter
DV0:            PUSH    H       ; Save remainder
                DAD     D       ; Subtract divisor (add negative)
                JNC     DV1     ; Underflow. Restore register pair HL
                XTHL
DV1:            POP     H
                PUSH    PSW     ; Save loop counter

                                ; 4 register left shift
                                ; Carry->C->B->L->H

                MOV     A,C
                RAL
                MOV     C,A

                MOV     A,B
                RAL
                MOV     B,A

                MOV     A,L
                RAL
                MOV     L,A

                MOV     A,H
                RAL
                MOV     H,A

                POP     PSW     ; Restore loop counter (A)
                DCR     A       ; Decrement loop counter
                JNZ     DV0     ; Lather, rinse, repeat

                                ; Post-divide clean-up:
                                ; Shift remainder right and return in DE

                ORA     A

                MOV     A,H
                RAR
                MOV     D,A     ; Store shifted H in D

                MOV     A,L
                RAR
                MOV     E,A     ; Store shifted L in E

                POP     PSW
                RET

ADDFUNC:        MOV     A,M
                ORA     A
                RZ
                INX     H
                DCX     H
                SUI     30H
                MOV     C,A
                LDA     401H
                MOV     D,A
                CALL    MULTI
                MOV     B,C
                LDA     400H
                ADD     B
                STA     400H
                LDA     401H
                CPI     1
                RZ
                LDA     401H
                MOV     C,A
                MVI     E,10
                MVI     B,0
                MVI     D,0
                MOV     A,H
                STA     402H
                MOV     A,L
                STA     403H
                CALL    DIVI
                MOV     A,C
                STA     401H
                LDA     402H
                MOV     H,A
                LDA     403H
                MOV     L,A
                LDA     400H
                INX     H
                JMP     ADDFUNC

SPMSG:		XTHL
		XRA	A
		ADD	M
		INX	H
		XTHL
		RZ
		CALL	CO
		JMP	SPMSG

GETYN:		CALL	SPMSG
		DB	'ENTER NUMBER: ',0
		CALL	CIMSG
		CALL	CCRLF
                MVI     A,100
                STA     401H
                LXI     H,INBUF+2
                CALL    ADDFUNC
                MVI     A,100
                STA     401H
                LDA     400H
                CALL    CO
                MVI     A,0
                STA     400H
		LDA	INBUF+2
		CPI	'123'
		RZ
		CPI	'N'
		JNZ	GETYN
		CPI	0
		RET

CIMSG:		PUSH	B
		PUSH	D
		PUSH	H
		LXI	H,INBUF+1
		MVI	M,0
		DCX	H
		MVI	M,80
		XCHG
		MVI	C,RBUFF
		CALL	BDOS
		LXI	H,INBUF+1
		MOV	E,M
		MVI	D,0
		DAD	D
		INX	H
		MVI	M,0
		POP	H
		POP	D
		POP	B
		RET

INBUF:		DS	83

		DS	64
STAK:		DB	0

                ORG     400H
                NOP
                100

		END
