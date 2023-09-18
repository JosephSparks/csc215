	PAGE	40		; 40 lines per page
	TITLE	"test_str - Copyright (C) Kevin Cole 2020.11.26 (GPL)"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; NAME:    test_str.asm
; EDITOR:  Kevin Cole ("The Ubuntourist") <kevin.cole@novawebdevelopment.org>
; LASTMOD: 2020.11.26 (kjc)
;
; DESCRIPTION:
;
;     Test integer to string conversion
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Code segment

	INCLUDE	stdlib	; Include standard I/O library

	ORG	000h	; Load at memory location 000 (hex)

	LXI	B,007Bh	; 123 decimal
	CALL	STR

	HLT		; DEBUG

	END		; End
