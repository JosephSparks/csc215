                ORG     TPA             ; Assemble program for TPA

START           LXI     SP,STAK         ; Set up user's stack
START1:         CALL    CCRLF           ; Start a new line
                LXI     H,SINON         ; with sign-on message
                CALL    COMSG
START2:         CALL    CIMSG           ; Get a line of input
                LXI     H,INBUF+1       ; Point to the input buffer
                CALL    REVERSE_ECHO
                CALL    CCRLF           ; and CR, LF
                JMP     START2          ; then do another

SINON           DB      'WELCOME TO JFK',SQT,'S REVERSING PROGRAM',CR,LF,0

; Console character into register A masked to 7 bits
CI:             PUSH    B               ; Save registers
                PUSH    D
                PUSH    H
                MVI     C,RCONF         ; Read function
                CALL    BDOS
                ANI     7FH             ; Mask to 7 bits
                POP     H               ; Restore registers
                POP     D
                POP     B
                RET

; Character in register A output to console
CO:             PUSH    B               ; Save registers
                PUSH    D
                PUSH    H
                MVI     C,WCONF         ; Select function
                MOV     E,A             ; Character to E
                CALL    BDOS            ; Output by CP/M
                POP     H               ; Restore registers
                POP     D
                POP     B
                RET

; Carriage Return, Line Feed to console
CCRLF:          MVI     A,CR
                CALL    CO
                MVI     A,LF
                JMP     CO

; Message pointed to by HL out to console
COMSG:          MOV     A,M             ; Get a character
                ORA     A               ; Zero is the terminator
                RZ                      ; Return on zero
                CALL    CO              ; else output the character
                INX     H               ; point to the next one
                JMP     COMSG           ; and continue

; Input console message into buffer
CIMSG:          PUSH    B               ; Save registers
                PUSH    D
                PUSH    H
                LXI
CIMSG:          PUSH    B               ; Save registers
                PUSH    D
                PUSH    H
                LXI     H,INBUF+1       ; Zero character counter
                MVI     M,0
                DCX     H               ; Set maximum line length
                MVI     M,80
                XCHG                    ; INBUF pointer to DE register
                MVI     C,RBUFF         ; Set up Read Buffer function
                CALL    BDOS            ; Input a line
                LXI     H,INBUF+1       ; Get buffer length
                MOV     E,M             ; into LSB of DE register pair
                MVI     D,0             ; Zero MSB
                JMP     REVERSE_ECHO

; Reverse the message pointed to by HL
REVERSE_ECHO:    PUSH    H               ; Save HL
                PUSH    D
                LXI     D,INBUF+1       ; Point to the start of the buffer
                DCR     D               ; Decrement to ignore null character
                JMP     ECHO_REV_CHAR   ; Echo the last character

ECHO_REV_CHAR:   MOV     A,M             ; Get a character
                CALL    CO              ; Output the character
                DCR     D               ; Decrement pointer
                JNZ     ECHO_REV_CHAR   ; Repeat until pointer is at the start

REV_DONE:        POP     D               ; Restore HL
                POP     H
                RET

INBUF:          DS      83              ; Line Input Buffer

; Set up stack space
                DS      64              ; 40H locations
STAK:           DB      0               ; Top of stack

                END
