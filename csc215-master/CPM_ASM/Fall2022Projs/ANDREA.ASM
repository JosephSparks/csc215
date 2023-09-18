            ORG     100h
            MOV DX, offset message
            MOV AH, 9
            INT     21h

            MOV AH, 0
            INT     20h

            LXI     H, HELLO
            END

HELLO:      DB  'Hello'