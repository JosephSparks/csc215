; CP/M I/O Subroutines

; ASCII characters
CR              EQU     0DH             ; Carriage Return
LF              EQU     0AH             ; Line Feed
SQT             EQU     27H             ; Single Quote

; CP/M BDOS Functions
RCONF           EQU     1               ; Read CON: into A
WCONF           EQU     2               ; Write A to CON:
RBUFF           EQU     10              ; Read a console line

; CP/M Addresses
RBOOT           EQU     0               ; Re-boot CP/M system
BDOS            EQU     5               ; System call entry
TPA             EQU     100H            ; Transient Program Area

                ORG     TPA             ; Assemble program for TPA

START           LXI     SP,STAK         ; Set up user's stack
START1:         CALL    CCRLF           ; Start a new line
                LXI     H,SINON         ; with sign-on message
                CALL    COMSG
START2:         CALL    CIMSG           ; Get a line of input
                CALL    CCRLF
                LXI     H,INBUF+2       ; Point to its text
                CALL    COMSG           ; Echo the whole line
                CALL    CCRLF           ; and CR, LF
                JMP     START2          ; then do another

SINON:          DB      'WELCOME TO JELKNER',SQT,'S PROGRAM',CR,LF,0

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
                LXI     H,INBUF+1       ; Zero character counter
                MVI     M,0
                DCX     H               ; Set maximum line length
                MVI     M,80
                XCHG                    ; INBUF pointer to DE register
                MVI     C,RBUFF         ; Set up Read Buffer function
                CALL    BDOS            ; Input a line
                LXI     H,INBUF+1       ; Get character counter
                MOV     E,M             ; into LSB of DE register pair
                MVI     D,0             ; Zero MSB
                DAD     D               ; Add length to start
                INX     H               ; plus one points to end
                MVI     M,0             ; Insert terminator at end
                POP     H               ; Restore all registers
                POP     D
                POP     B
                RET

INBUF:          DS      83              ; Line Input Buffer

; Set up stack space
                DS      64              ; 40H locations
STAK:           DB      0               ; Top of stack

                END
