#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Written by Kevin Cole <ubuntourist@hacdc.org> 2020.11.29
#
# This is an attempt to illustrate conversion from binary integer
# to printable ASCII in a way that would be "simple" -- famous last
# words -- to implement on the Altair 8800 in assembly language.
#

INTGR  = 0x07FB          # INTGR:   DB     07h,FBh   ; Convert 2043 to ASCII
DIGITS = []              # DGITS:   DS     08h       ; Reserve 8 bytes

HL = INTGR               #          LHLD   INTGR     ; may load in wrong order
BC = -0x000A             #          LXI    B,-000Ah  ; -10 (FFF6h)
                         #          ...
DE = 0                   #          LXI    D,0000h   ; 0

while HL > 0:
    while HL > 9:
        HL += BC
        DE += 1          #          INX    D
    DIGITS.append(HL)    #          PUSH   HL
    HL = DE
    DE = 0
while DIGITS:            #          POP    HL
    print(f"'{DIGITS.pop()}'", end=" ")
print()
