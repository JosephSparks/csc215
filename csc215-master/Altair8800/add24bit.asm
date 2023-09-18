;
;
; NAME:    add24bit.asm
; AUTHOR:  Jeff Elkner <jeff.elkner@novawebdevelopment.org>
; LASTMOD: 2020.12.03 (je)
;
; DESCRIPTION:
;
;     This is the assembly source code for a program that adds two 24 bit 
;     unsigned numbers.
;
;

; Code segment:

        ORG    0h       ; Set Program Counter to address 0
START:  LDA    V1P3     ; Load value (5) at VAL1 (80h) into Accumulator
        MOV    B,A      ; Move value in Accumulator to Register B
        LDA    V2P3     ; Load value (8) at VAL2 (81h) intu Accumulator
        ADD    B        ; Add value in Register B to value in Accumulator
        STA    SUM      ; Store accumulator at SUM (82h)
        HLT             ; Halt 

; Data segment:

        ORG    80h      ; Set Program Counter to address 80
V1P1:   DB     5h       ; Data Byte at address 80 = 
V1P2:   DB     8h       ; Data Byte at address 81 = 
V1P3:   DB     8h       ; Data Byte at address 82 = 
V2P1:   DB     5h       ; Data Byte at address 83 = 
V2P2:   DB     8h       ; Data Byte at address 84 = 
V2P3:   DB     8h       ; Data Byte at address 84 = 
SUM1:   DB     0h       ; Data Byte at address 85 = 0
SUM2:   DB     0h       ; Data Byte at address 82 = 0
SUM3:   DB     0h       ; Data Byte at address 82 = 0

        END             ; End
