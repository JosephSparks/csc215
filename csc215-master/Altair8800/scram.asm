;
;
; NAME:    scram.asm
; AUTHOR:  Kevin Cole ("The Ubuntourist") <kevin.cole@novawebdevelopment.org>
; LASTMOD: 2021.01.11 (kjc)
;
; DESCRIPTION:
;
;     Set to Clear all RAM (SCRAM) in a specified range.
;
;     IMPORTANT SAFETY TIP: As with Python, the high end of the
;     range is one BEYOND the stopping point. In other words, the
;     code zeroes locations from FIRST to LAST-1, not LAST.
;
;

; Code segment

	ORG	00h	; Set the location counter to 0 (hex)

	LHLD	FIRST	; Load register pair HL w/ address of first byte
	MOV	A,H	; Negate HL and store in DE (get high order byte)
	CMA		;   "    "   "    "   "  "  (complement high order)
	MOV	D,A	;   "    "   "    "   "  "  (store in D)
	MOV	A,L	;   "    "   "    "   "  "  (get low order byte)
	CMA		;   "    "   "    "   "  "  (complement low order)
	MOV	E,A	;   "    "   "    "   "  "  (store in E)
	INX	D	;   "    "   "    "   "  "  (make 2's complement)
	LHLD	LAST	; Load register pair HL w/ address of last byte
	DAD	D	; Daddy? ;-) byte count in HL = LAST - FIRST
	XCHG		; Store byte count in DE
	LHLD	FIRST	; First location to zero
LOOP:	MVI	M,00h	; Move zero into memory location
	INX	H	; Point to next memory location
	DCX	D	; Decrement number of bytes remaining
	MOV	A,D	; Check if bytes remaining (register pair DE) is...
	ORA	E	; ...zero by logically OR'ing D with E
	JNZ	LOOP	; Repeat until bytes remaining = 0
	HLT		; Don't try to execute random crap following code end

; Data segment

	ORG	40h

FIRST:	DW	80h	; First memory location to be zeroed
LAST:	DW	110h	; Last  memory location to be zeroed + 1

	END		; End
