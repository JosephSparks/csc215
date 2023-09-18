      PROGRAM REPETE
      IMPLICIT INTEGER (A-Z)

      INTEGER DIGTS(8)

      INTGR = 2043

      HL = INTGR
      BC = -10
      DE = 0
      X  = 0
 100  IF (HL .LE. 0) GO TO 500    ! OUTR:  ; compare HL to 0
                                  !        JN      500
 200  IF (HL .LE. 9) GO TO 400    ! INNR:  ; compare HL to 9
                                  !        JN      400
      HL = HL + BC                !        DAD     B
      DE = DE + 1                 !        INC     D
      GO TO 200                   !        JMP     INNR
 400  X = X + 1                   !
      DIGTS(X) = HL + 48          !        PUSH    H
      HL = DE
      DE = 0
      GO TO 100
 500  DO 700 Y = X,1,-1           ! SAVE:  POP     H
         WRITE (6, 600) DIGTS(Y)  !        STore   DIGIT-pointer
 600     FORMAT(A)                !        INC     DIGIT-pointer
 700  CONTINUE
      END
