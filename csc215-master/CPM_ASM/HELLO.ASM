BDOS            EQU  05H
STROUT          EQU  09H

                ORG  0100H

ENTRY           LXI   D, HELLO
                MVI   C, STROUT
                CALL  BDOS
                RET

HELLO           DB   'Hello world!'
                DB   13, 10, '$'

                END
