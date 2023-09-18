; Uppercase a string.
;

LOWERA      equ     61h                 ; ASCII lowercase a
LOWERZ      equ     7ah                 ; ASCII lowercase z
OFFSET      equ     32                  ; lowercase-uppercase offset
START       equ     60h                 ; Address of first character 
LEN         equ     16                  ; Number of characters 

            lxi     h, START
            mvi     c, LEN
            mvi     d, LOWERA
            mvi     e, LOWERZ

loop:       mvi     a, 0
            cmp     c                   ; c == 0?
            jz      done                ; Yes
            mov     a, d
            mov     b, m                ; B holds current character in string
            cmp     b                   ; < a?
            jnc     skip                ; Yes, skip to next character
            mov     a, e
            cmp     b                   ; > z? 
            jc      skip                ; Yes, skip to next character
            mov     a, b
            sui     OFFSET              ; Subtract offset to get uppercase
            mov     m, a
skip:       inx     h
            dcr     c
            jmp     loop

done:       ret

            end
