#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import fileinput

replacements = {"JM 10261":  f"JM {0o10261:x}\t",
                "JMP 10126": f"JMP {0o10126:x}",
                "JMP 10234": f"JMP {0o10234:x}",
                "JNC 10142": f"JNC {0o10142:x}",
                "JNC 10174": f"JNC {0o10174:x}",
                "JNZ 10166": f"JNZ {0o10166:x}",
                "JP 10261":  f"JP {0o10261:x}\t",
                "JZ 10147":  f"JZ {0o10147:x}\t"}

for octal in replacements:
    with fileinput.FileInput("altair.log", inplace=True, backup=".bak") as trace:
        for line in trace:
            print(line.replace(octal, replacements[octal]), end="")
