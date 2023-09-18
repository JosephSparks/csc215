                    ;
bdos:		equ	5	; CP/M BDOS Call
puts:		equ	9	; Print string
fopen:		equ	15	; Open file
fcb:		equ	5ch	; file control for file from command line
dma:		equ	80h	; access memory
		        org	100h	; load the program (starting on 'page 1')
		        xra	a	; Zero A. (a XOR a is all zero)
		        mov	b,a	; Zero B too
		        lxi	d,200h	; load page two to zero it
zero:		        stax	d	; Zero out a byte (store A, which is zero)
		        inx	d	; Next byte
		        stax	d	; Zero out another byte
		        inx	d	; Next byte
		        dcr	b	; Decrement the loop counter.
		        jnz	zero	; Continue until B comes back to zero.
                ;; page 2 has been zerod
		        ;; Open the file given on the command line. 
		        lxi	d,fcb	; CP/M will parse command line (or try to)
		        mvi	c,fopen	; so we can open the file with 15 ("F_OPEN call")
		        call	bdos	; We can just call fopen on it.
		        inr	a	; It sets A=FF on error, FF +1 = 0
		        jz	error	; so go to error if file could not be opened
                jmp acsble
		;; Process the file by 128-byte sections (half a page)
error:		        lxi	d,errmsg
                jmp outs
acsble:             lxi d,acsmg
		        ;; Print string
outs:		        mvi	c,puts
                ;;moves the string into c
                ;;calls to bd
				jmp	bdos
				hlt

errmsg:		db	'Error: Incorrect File$'	; "Error message" (if file error)
acsmsg:     db  'File was accessed!$'       ; "Message the file could be acessed"
