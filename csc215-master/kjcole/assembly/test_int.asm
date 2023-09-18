	PAGE	40		; 40 lines per page
	TITLE	"test_int - Copyright (C) Kevin Cole 2020.11.26 (GPL)"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; NAME:    test_int.asm
; EDITOR:  Kevin Cole ("The Ubuntourist") <kevin.cole@novawebdevelopment.org>
; LASTMOD: 2020.11.26 (kjc)
;
; DESCRIPTION:
;
;     Test string to integer conversion
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Code segment

	INCLUDE	stdlib	; Include standard I/O library

	ORG	000h	; Load at memory location 000 (hex)

	LXI	B,BUFFR
	CALL	INT

	HLT		; DEBUG

; Data segment

	ORG	40h

BUFFR:	DB	"2043"	; 7F
	DB	NUL	; NULL string terminator

	END		; End
