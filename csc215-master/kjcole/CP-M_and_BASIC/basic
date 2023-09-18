; Written by Kevin Cole <ubuntourist@hacdc.org> 2020.12.10
;
; To use:
;
;    $ altairz80
;    sim> do basic.do
;    MEMORY SIZE?
;    LINEPRINTER? O
;    HIGHEST DISK NUMBER? 1
;    DISK FILES? 4
;    RANDOM FILES? 4
;
; At this point, you are running the BASIC Version 5.0 interpreter.
; (To change versions, uncomment the "attach" line for the version
; you want, while commenting the rest.)
;
; Now, write some BASIC code....
;
; And Ctrl-E, followed by "exit" to exit the simulator.
;

set cpu 8080
;attach dsk0 basic-v300-5-c.dsk
;attach dsk0 basic-v300-5-f.dsk
;attach dsk0 basic-ver-4-0.dsk
;attach dsk0 basic-ver-4-1.dsk
attach dsk0 basic-ver-5-0.dsk
load dbl.bin ff00
go ff00
