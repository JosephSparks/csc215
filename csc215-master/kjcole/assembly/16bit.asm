;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; NAME:    add.asm
; AUTHOR:  Adrian Buchholz, Francesco Crisafulli, Peter Yuan
; LASTMOD: 2020.12.02
;
; DESCRIPTION:
;
;     This is the assembly source code that adds two 16 bit numbers
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        ORG    0o       
START:  LDA    VAL1     ; VAL1 (200) | low byte
        MOV    B,A      ; Move to Register B
        LDA    VAL2     ; VAL2 (201) | low byte
        ADD    B        ; Add two low bytes | Sets Carry Bit to 0 or 1
        STA    SUMLOW   ; Store in (205)

        ; Add the second byte (Doesn't affect carry bit)
        LDA    VAL3     ; VAL2 (202) | high byte
        MOV    C,A      ; Move to Register C
        LDA    VAL4     ; VAL4 (203) | high byte

        JNC     ADD_2   ; Check for Carry from the first byte add | if 0 jump to ADD_2 else increment by one and go to ADD_2
        INR     A       ; Add the carry bit from the lower byte

ADD_2:
        ADD    C        ; Add two high bytes
        STA    SUMHIGH  ; Store in (206)

        JMP    START    


              ORG    200o 
; Low Bytes     
VAL1:         DB     11110010b        
VAL2:         DB     00100101b 

; High Bytes
VAL3:         DB     01010100b   
VAL4:         DB     01010110b 

; Carry bit
CARRY:        DB     00000001b ; Memory Register 204

; Story High and Low Byte Sum
SUMLOW:       DB     00000000b
SUMHIGH:      DB     00000000b     

        END

