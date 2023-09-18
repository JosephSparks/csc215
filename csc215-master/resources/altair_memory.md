# REGISTERS                       
```
A 0000 0000 $00 F 0000 0000 $00
B 0000 0000 $00 C 0000 0000 $00
D 0000 0000 $00 E 0000 0000 $00
H 0000 0000 $00 L 0000 0000 $00
SP 0000 0000 0000 0000 $0000
PC 0000 0000 0000 0000 $0000
```

# RANDOM ACCESS MEMORY (RAM)
```
0000  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0010  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0020  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0030  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0040  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0050  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
0060  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    
0070  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
0080  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
0090  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
00a0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
00b0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
00c0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
00d0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
00e0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
00f0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  
```

# FLAGS

| 8  | 7  | 6  | 5  | 4  | 3  | 2  | 1  |
|----|----|----|----|----|----|----|----| 
| S  | Z  |    | AC |    | P  |    | C  | 


* *Sign* (**S**), set if the result is negative.
* *Zero* (**Z**), set if the result is zero.
* *Parity* (**P**), set if the number of 1 bits in the result is even.
* *Carry* (**C**), set if the last addition operation resulted in a carry or if
  the last subtraction operation required a borrow.
* *Auxiliary carry*, (**AC** or **H**), used for binary-coded decimal
  arithmetic (**BCD**).

Thanks to [Wikipedia](https://en.wikipedia.org/wiki/Intel_8080) for the above
information.
