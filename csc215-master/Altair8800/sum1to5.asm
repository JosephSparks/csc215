; Code segment:
        ORG    0h       ; Set Program Counter to address 0
START:  LDA    I
        MOV    B,A      ; RegB => I (1..N)
        LDA    STEP
        MOV    C,A      ; RegC => STEP (always 1)
        LDA    SUM
        MOV    D,A      ; RegD => SUM (result)
LOOP:     MOV    A,D    ; Move value to Accumulator from Register D
          ADD    B      ; Add value in Register B with Accumulator
          MOV    D,A    ; Save result back to D     I
          MOV    A,B    ; Move B to A and decrement it
          SUB    C
          JZ     PEND   ; If A is zero, the calculation is complete
          MOV    B,A    ; If not, continue
          JMP    LOOP     
PEND:   MOV A,D         ; Save result in SUM value
        STA SUM
PWAIT:  JMP PWAIT       ; Nothing to do, infinite loop
; Data segment:
        ORG    80h      ; Set Program Counter to address 80h
I:      DB     5h       ; Data Byte at address 80h = 5
STEP:   DB     8h       ; Data Byte at address 81 = 8
SUM:    DB     0h       ; Data Byte at address 82 = 0
        END             ; End
