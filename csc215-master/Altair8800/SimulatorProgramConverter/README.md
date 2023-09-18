# MITS Altair Simulator Program Converter

The [MITS Altair Simulator](https://www.s2js.com/altair/) is a wonderful tool
for [demystifying](https://en.wiktionary.org/wiki/demystify) the computer for
computer science and programming students.

The purpose of this little Python script is to make it easier to load binary
programs into the Altair simulator.  Perhaps the easiest way to explain how
it works is to share an example.

The following represents a modified version of the first program presented in
[Part 3. Operation of the Altair 8800](https://ubuntourist.codeberg.page/Altair-8800/part-3.html)
of the
[Altair 8800 Operator's Manual](https://ubuntourist.codeberg.page/Altair-8800/).

```
3A
40
00
47
3A
41
00
80
32
42
00
C3
00
00
===
40:0F
41:01
```

The file starts with a sequence of lines, each containing a pair of hexadecmial
digits representing a byte (8 bits) of machine memory.  These bytes will be
added to the computer memory in order beginning at address 0.

The ``===`` line marks the beginning of a different format, containing
pairs of hex digits seperated by a colon (``:``).  The first is a memory
address, the second a value. The generated binary output file will have the
specified memory address set to the specified value. This section can be used
to set data addresses (a.k.a. *variables*) used by the program.

All the remaining unused bytes from the 256 byte address space are set to 0 to
make it easier for students to see that is happening when they look at the
memory state in the simulator.
