Software Components of the Computer System:

Hardware are the physical computer parts. If they can damage your floor when dropped, it's hardware.
Software refers to the computer programs, seperate from hardware.
In the '70s, computers used magnetic core memory, which stored data even without power.
An initial minimal "bootstrap loader was used to load the operating system from storage when needed.
Semiconductor memory replaced core memory, but unlike MCM could face data loss due to power outages.
ROM was used for bootstrap loaders as PROMs became affordable, reducing front panel switches and lights. Read-Only Memory cannot be altered and is not volative memory, so using it to load an OS was very practical.
Because of it's non-volative nature, the term "firmware" was used to highlight the difference between RAM/RWM and ROM storage.

Firmware Monitor:
Microprocessor ICs like the 8080 family start by fetching an instruction from memory location zero upon reset (automatic or manual).
Reset and bootup procedures are essential for computer operation but don't require deep hardware knowledge.
In CP/M systems, where the low end of memory needs read-write RAM, a bootup circuit tricks the computer. It replaces RAM at location zero with a "shadow PROM" during reset.
The shadow PROM provides one or more instructions that the CPU executes. Eventually, it's told to switch back to RAM at location zero.
Typically, the first instruction fetched from the shadow PROM is an unconditional jump to a monitor program in ROM, often at the top of memory.
The CPU knows to fetch the next instruction from the jumped-to location.
The address bus, with sixteen signal lines, carries memory location addresses for read or write. 
Schoolbuses carry kids, computer buses carry data.
Traditional monitor programs use the console to interact with the operator, providing routines for hardware diagnostics and debugging assembly language programs.

A complete monitor can help with debugging.
CP/M includes DDT for debugging.
Some monitors offer peripheral driver programs.
CP/M provides equivalent functions.
A loader program in monitor PROM is essential.
CP/M loads and runs on reset with a system disk in the drive.

The operating system;
CP/M is our computer's operating system.
It was originally developed for the Intel MDS-800 and adapted for various computer models.
I/O port assignments are not consistent between computers, but CP/M solves this problem, allowing it to work across diverse hardware environments without needed specific drivers.
Drivers: set of files used to interact with certain hardware and software.

Customizing CPM:
Adapting CP/M to specific hardware is a one-time task, typically done by assembly language programmers. However, CP/M has user-to-system conventions that simplify software development.
All disk and I/O accesses use function codes and data addresses in registers.
These conventions make programs that can run on different hardware without modification.
Some programmers still use hardware-specific addresses, but CP/M eliminates any issues in that regard.

Application Programs:
RAM for user programs depends on the computer's configuration.
16K RAM typically works.
User programs run in the "transient program area" (TPA) within RAM.
Smaller systems may need to overlay part of CP/M for user workspace.
User programs == application programs.

Special Memory Areas:
The lowest RAM addresses are vectors, used as unconditional jump instructions for hardware interrupts. The 8080 family uses eight, and additional vectors exist in the Z80 and 8085.
We don't need to worry about this as long as we make sure not to mess with these memory "areas".
CP/M allocates buffer areas above the vectors for interfacing our programs with the operating system. CP/M has 256 buffers at the bottom of the RAM.
Some RAM areas may be reserved for monitor functions, although this varies between computers. Monitors can range from using a few locations to several kilobytes for functions like memory-mapped display images.