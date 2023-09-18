; Edited by Kevin Cole <ubuntourist@hacdc.org> 2020.12.13 (kjc)
;
; 2020.12.13 KJC - Added "reset all" to the top of the file
;

reset all

d tracks[0-7] 254
attach dsk0  cpm2.dsk
attach dsk1  app.dsk
attach hdsk0 i.dsk

;; Demo how to use other disk formats (Apple II) in CP/M 2
;attach hdsk1 appleiicpm.dsk
;set hdsk1 format=apple-d2

set cpu 64k
set cpu noitrap
set cpu z80
set cpu altairrom
set cpu nonbanked
reset cpu
set sio ansi
set sio nosleep
boot dsk
