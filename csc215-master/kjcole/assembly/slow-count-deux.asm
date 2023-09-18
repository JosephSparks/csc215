;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; NAME:    slow-count-deux.asm
; EDITOR:  Kevin Cole ("The Ubuntourist") <kevin.cole@novawebdevelopment.org>
; LASTMOD: 2020.10.06 (kjc)
;
; DESCRIPTION:
;
;     Increment a memory location each time a key is pressed.
;
;     To take full advantage of the included ANSI escape sequences,
;     start minicom with the `-c on` option:
;
;         $ minicom -c on altair
;
;     or include it in the MINICOM environment variable:
;
;         $ export MINICOM="-m -c on"
;         $ minicom altair
;
;     NOTES: For help with ANSI escape sequences see:
;
;                https://en.wikipedia.org/wiki/ANSI_escape_code
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;
; Constants ;
;;;;;;;;;;;;;

; ASCII characters

NUL:	EQU	00h	; ASCII NUL (Null)
TAB:	EQU	09h	; ASCII TAB (Tab              a.k.a. Ctrl-I)
LF:	EQU	0Ah	; ASCII LF  (Line Feed        a.k.a. Ctrl-J)
CR:	EQU	0Dh	; ASCII CR  (Carriage Return, a.k.a. Ctrl-M)
ESC:	EQU	1Bh	; ASCII ESC (Escape,          a.k.a. Ctrl-[)

; I/O

SIO1S:	EQU	10h	; Serial I/O communications port 1 STATUS
SIO1D:	EQU	11h	; Serial I/O communications port 1 DATA

MRST:	EQU	03h	; UART Master Reset
RCVD:	EQU	01h	; Character received
SENT:	EQU	002h	; Data sent. Output complete

; Code segment

	ORG	0000h	; Load at address 0

	MVI	A,MRST
	OUT	SIO1S	; Reset the UART
	MVI	A,15h	; Settings: No RI, No XI, RTS Low, 8N1, /16
	OUT	SIO1S	; Configure the UART with above settings

	LXI	B,WORDS	; Point to WORDS
	LXI	H,WATCH	; Set location to increment

FETCH:	IN	SIO1S	; Check serial I/O status bit 1 (XMIT status)
	ANI	SENT	; If data not sent (i.e. XMIT not finished)...
	JZ	FETCH	; ...spin wheels: continue checking status. Else...
	LDAX	B	; ...Fetch byte
	CPI	NUL	; ...If byte is ASCII NUL...
	JZ	COUNT	; ......begin counting. Else...
	OUT	SIO1D	; ......output byte
	INX	B	; ......point to next byte
	JMP	FETCH	; ......lather, rinse, repeat: Fetch next byte.

COUNT:	IN	SIO1S	; Check serial I/O status bit
	ANI	RCVD	; If no data received...
	JZ	COUNT	; ...spin wheels: continue checking status. Else...
	IN	SIO1D	; ...read the character
	CPI	TAB	; ...If it is a TAB character...
	JZ	DONE	; ......stop counting. Else...
	OUT	SIO1D	; ...echo it
	INR	M	; ...increment the watched counter
	JMP	COUNT	; ...wait for next character
DONE:	MOV	L,M	; Put the contents of WATCH in the low byte of HL
	PCHL		; Jump to value of WATCH to display in LEDs
	
; Data segment

	ORG	100h	; Load at memory locaton 256

WATCH:	DB	00h	; Initialize to zero
	DB	02h	; offset for use as high byte of HL register pair

WORDS:	DB	ESC,"[2J"
	DB	CR,LF
	DB	CR,LF,"            "
	DB	"                ",ESC,"[31m","SLOW COUNTER DEUX",ESC,"[0m",CR,LF
	DB	CR,LF,"            "
	DB	"Press a printable key slowly several times,"
	DB	CR,LF,"            "
	DB	"while keeping track of the number of presses.",CR,LF
	DB	CR,LF,"            "
	DB	"Then, press the ",ESC,"[31m","TAB",ESC,"[0m"
	DB	" key to stop.",CR,LF
	DB	CR,LF,"            "
	DB	"D0-D7 will equal to the number of key presses."
	DB	CR,LF
	DB	CR,LF
	DB	CR,LF
	DB	NUL	; NULL string terminator

; Abuse of LEDs segment

	ORG	200h	; Load at memory location 512

ABUSE:	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction
	PCHL		; Abuse the Program Counter load instruction

	END		; End

