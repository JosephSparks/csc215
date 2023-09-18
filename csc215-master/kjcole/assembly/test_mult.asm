	PAGE	40		; 40 lines per page
	TITLE	"test_mult - Copyright (C) Kevin Cole 2020.11.26 (GPL)"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; NAME:    test_mult.asm
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

	MVI	C,05h
	MVI	D,10h
	CALL	MULTI

	HLT		; DEBUG

	END		; End
