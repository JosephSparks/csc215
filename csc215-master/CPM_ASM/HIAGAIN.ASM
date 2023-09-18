BDOS            EQU  05H
STROUT          EQU  09H

                ORG  0100H

ENTRY           LXI   D,MESSG  
                MVI   C,STROUT
                CALL  BDOS
                RET

MESSG           DB   'Hello again, you wild, wonderful world!'
                DB   39, 10, '$'

                END
