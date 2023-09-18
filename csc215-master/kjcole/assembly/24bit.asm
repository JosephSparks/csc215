;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; NAME:    24bit.asm
; AUTHOR:  Adrian Buchholz, Francesco Crisafulli, Peter Yuan
; LASTMOD: 2020.12.04
;
; DESCRIPTION:
;
;     This is the assembly source code that adds two 24 bit numbers
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        ORG    0o       
START:  LDA    VAL1     ; VAL1 (200) | low byte
        MOV    B,A      ; Move to Register B
        LDA    VAL2     ; VAL2 (201) | low byte
        ADD    B        ; Add two low bytes | Sets Carry Bit to 0 or 1
        STA    SUMLOW   ; Store in (206)

        ; Add the second byte (Doesn't affect carry bit)
        LDA    VAL3     ; VAL2 (202) | mid byte
        MOV    C,A      ; Move to Register C
        LDA    VAL4     ; VAL4 (203) | mid byte

        JNC    ADD_2   ; Check for Carry from the first byte add | if 0 jump to ADD_2 else increment by one and go to ADD_2
        INR    A       ; Add the carry bit from the lower byte

ADD_2:
        ADD    C        ; Add two mid bytes
        STA    SUMMID   ; Store in (207)

        LDA    VAL5     ; VAL5 (204)
        MOV    D,A      ; Move value to Reigester D
        LDA    VAL6     ; VAL6 (205)

        JNC    ADD_3    ; Check carry conditional
        INR    A


ADD_3:
        ADD    D        ; Add two high bytes    
        STA    SUMHIGH  ; Store in (210)

        JMP    START    


              ORG    200o 
; Low Bytes     
VAL1:         DB     10000001b ; 200       
VAL2:         DB     10000001b ; 201

; Mid Bytes
VAL3:         DB     11000001b ; 202 
VAL4:         DB     01000001b ; 203

; High Bytes
VAL5:          DB     01000001b ; 204
VAL6:         DB     00010001b ; 205

; Carry bit
CARRY:        DB     00000001b ; 206

; Story High and Low Byte Sum
SUMLOW:       DB     00000000b ; 207
SUMMID:       DB     00000000b ; 210
SUMHIGH:      DB     00000000b ; 211  

        END 