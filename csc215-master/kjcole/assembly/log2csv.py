#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
#  log2csv.py
#
#  Copyright 2020 Kevin Cole <kevin.cole@novawebdevelopment.org> 2020.11.27
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of
#  the License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public
#  License along with this program; if not, write to the Free
#  Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
#  Boston, MA 02110-1301, USA.
#


from os.path    import expanduser      # Cross-platform home directory finder
import os
import sys
import fileinput
import re

__appname__    = "log2csv"
__module__     = ""
__author__     = "Kevin Cole"
__copyright__  = "Copyright \N{copyright sign} 2020"
__agency__     = "NOVA Web Development"
__credits__    = ["Kevin Cole",]  # Authors and bug reporters
__license__    = "GPL"
__version__    = "1.0"
__maintainer__ = "Kevin Cole"
__email__      = "kevin.cole@novawebdevelopment.org"
__status__     = "Prototype"  # "Prototype", "Development" or "Production"


def main():
    _ = os.system("clear")
    print(f"{__appname__} v.{__version__}")
    print(f"{__copyright__} ({__license__})")
    print(f"{__author__}, {__agency__} <{__email__}>")
    print()

    bin = [[], []]
    src, dst = 0, 1

    fin = open("altair.log", "r")
    bin[src] = fin.readlines()
    fin.close()

    # Pass 1: Convert octal values to hexadecimal and ignore unused lines

    lineno = 0
    for old in bin[src]:
        lineno += 1
        new = ""
        if old[0:4] == "Step":                     # Has octal value(s)
            words = re.split("([ ,()])",old)
            for word in words:
                if word.isdigit():                 # If octal value...
                    word = f"{int(word, 8):04X}h"  # ...convert to hex
                new += word
        elif (old[0:5] not in ("Loggi",
                               "Debug",
                               "sim> ",
                               "Goodb",
                               "Log f")) and (len(old) > 1):
            new += old
        bin[dst].append(new)

    src = (src + 1) & 1   # was % 2
    dst = (dst + 1) & 1   # was % 2

    # Pass 2: ...

    steps = []

    for old in bin[src]:
        new = ""
        if old[0:4] == "Step":
            steps.append({})
            steps[-1]["opcode"] = re.split("[()]",
                                           old)[1]
        elif old[0:3] in ("PC:", "BC:", "DE:", "HL:"):
            steps[-1][old[0:2]] = re.split("[\t\n]",
                                           old)[1]
        elif old[0:2] in ("A:", "C:", "Z:", "S:"):
            steps[-1][old[0]]   = re.split("[\t\n]",
                                           old)[1]
        elif old.split(":")[0].isdigit():
            steps[-1][f"{int(old.split(':')[0], 8):04X}h"] = re.split("[\t\n]",
                                                                      old)[1]
    for step in steps:    # DEBUG (KJC)
        input(step)       # DEBUG (KJC)

    fout = open("altair.new", "w")
    fout.write(bin[dst])
    fout.close()

    return 0


if __name__ == "__main__":
    main()
