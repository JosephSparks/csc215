#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import re

x = "Step expired, PC: 000003 (CALL 10230)"
y = re.split("([ ,()])",x)

z = ""
for i in y:
    if i.isdigit():
        i = f"{int(i, 8):04X}h"
    z += i

# x = "".join(y)
print(x)
print(z)
