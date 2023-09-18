# CS-205 Computer Architecture

Written by Kevin Cole (ubuntourist@hacdc.org) 2020.12.10 (kjc)

This is a backup of my files from csdev.gctaa.net, a server set up by
Jeff Elkner for his **CS-205** students

```
    README.md ................ This file
    assembly/ ................ My assembly language examples & experiments
    CP-M_and_BASIC/ .......... CP/M and BASIC disk images for the Altair Z80 !
    backup/ .................. Write-protected backup of CP/M and Basic      !
```

* ! The CP/M and BASIC disk images are **writeable** !!! When loaded
  into the **simh** Altair Z80 (`altairz80`) and run, changes made in
  the running environment are **written and saved** to the disk image
  files.  The `backup/` directory is a write-protected copy of the
  virgin disk images, in case a user hopelessly borks the writeable
  images.

In addition to the above, the following more personal, but still quite
useful, startup files are included:

```
    .bash_aliases
    .bash_history
    .bash_logout
    .bash_profile -> .profile
    .bashrc
    .profile

    .gitattributes
    .gitconfig
    .gitignores
```

----

# Loading CP/M or BASIC into the SIMH Altair simulator

## Unfortunately...

Unfortunately, I had trouble finding images that worked with the
Altair 8800. I did, however, find images that work with its close
cousin, the Altair Z80...

----

## The BASIC interpreter

I actually found several different versions of BASIC, and have made a
script that loads the most recent version BASIC Version 5.0.  However,
the script can be edited to load earlier versions if you so choose.

To "boot" the interpreter, start the Z80 simulator and run the `do`
command below. Then answer the 5 questions it asks as follows:

```
    $ altairz80
    Altair 8800 (Z80) simulator V3.8-1
    sim> do basic.do
    Altair Floppy Disk DSK: unit is read only
    256 bytes [1 page] loaded at ff00.

    MEMORY SIZE? 
    LINEPRINTER? O                <--- NOTE: This is capital "O" not zero!!!
    HIGHEST DISK NUMBER? 1
    HOW MANY FILES? 4
    HOW MANY RANDOM FILES? 4

    41261 BYTES FREE
    ALTAIR BASIC 5.0 [14JUL78]
    [DISK EXTENDED VERSION]
    COPYRIGHT 1978 BY MITS INC.
    OK
```

This loads a disk image into a memory, and then jumps to the memory
address where the image was loaded. You are "booting" from a floppy
disk.

At this point, you are running the interpeter.

Now, go off and write some BASIC code...

Or... You can cheat a little: The disk image comes with three 
sample programs on a virtual disk. `MOUNT 0` mounts the disk,
and `FILES` lists the contents of that disk.

```
    MOUNT 0
    OK
    FILES
    PIP       BOMBER    3DTTT
    OK
```

Don't worry about `PIP` it won't be very useful. `BOMBER` and `3DTTT`
are games.  (3DTTT, as you might suspect, is 3D Tic-Tac-Toe). `LOAD`
loads a program from disk, `LIST` lists the source code, and `RUN`
runs the code.

```
	LOAD "3DTTT"
    OK
    LIST
    RUN
```

As with the Altair 8800 simulator `Ctrl-E` ends the simulation, and
display the `sim>` prompt. At that point, `exit` will exit the
simulator.

----

## The CP/M operating system

In similar fashion, I've got a script to load CP/M. To "boot" the operating 
system,

```
    $ altairz80
    sim> do cpm.do
```

And again, `Ctrl-E` and `exit` to finish up.

**NOTE:** I don't know CP/M. So, if you want to know what you can do
with CP/M dig around for a manual.

----

The following files 

* `app.dsk`
* `appleiicpm.dsk`
* `cpm2`
* `cpm2.dsk`
* `i.dsk`

were obtained from the zip file `cpm2.zip` which was downloaded from:

http://www.classiccmp.org/cpmarchives/cpm/mirrors/www.schorn.ch/cpm/intro.php

`cpm2` has been renamed to `cpm.do` and symlinked for compatibilty
with earlier instructions above.

----
