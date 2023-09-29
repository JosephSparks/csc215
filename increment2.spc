01 # load the following 2 bytes into registers B and C
50
00
0A # Load register A with contents of memory adddress in register B and C (0x0050)
11 # Load register D with 0x00 and reg E with 10 (0x0A)
00
0A
3C # start loop here: increment register A
0C # increment register C
02 # store register A in mem adddr from regs B and C
15 # decrement reg D
C2 # Loop: Jump if not zero back to start
07
00
76 # HALT
===
50:20 # start counting at 32 (0x20)