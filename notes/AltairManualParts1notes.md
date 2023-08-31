# Part 1 Introduction
For its time, the Altair 8800 was a remarkable feat of technology:

Parts that the textbook noted:
- Intel Corporation’s Model 8080 Microcomputer
- Complete CPU on a single silicon chip
- MOS battery

Computer has 78 machine language instructions which allowed it to do a lot more than typical computer of that time.

Manual Parts:

1. Breaks down computer terminology for beginner users
2. Parts 2 and 3 describe organization and how to operate Altair 8800, building upon the previous sections foundational knowledge
3. Part 4 details the 78 machine language instructions

### Section A. Logic

British mathematician Boole wrote a book titled *The Mathematical Analysis of Logic*, which gave birth to a new field of logical expression named Boolean algebra.

**It fundamentally operates with the basis that something is true or false and is a major part of computing**

In computers, true means on and false means off for circuitry.

Basic logic statements
1. AND
2. OR
3. NOT

| Inputs      | Results     |
| ----------- | ----------- |
| 0 AND 0     | FALSE       |
| 0 AND 1     | FALSE       |
| 1 AND 0     | FALSE       |
| 1 AND 1     | TRUE        |

For AND comparison to result in a 1/ON (or in Boolean algebra, true), both inputs must be 1 or ON.

| OR Inputs   | Results   |
| ----------- | ----------- |
| 0 AND 0     | FALSE       |
| 0 AND 1     | TRUE       |
| 1 AND 0     | TRUE       |
| 1 AND 1     | TRUE        |

*Figure 2: OR Inputs*


| NOT Inputs   | Results   |
| ----------- | ----------- |
| 0     | TRUE       |
| 1    | FALSE       |

*Figure 3: NOT Inputs*

### Section B. Electronic Logic

Logic Gates: three different shapes

![](https://ubuntourist.codeberg.page/Altair-8800/_images/and-gate.svg)

![](https://ubuntourist.codeberg.page/Altair-8800/_images/or-gate.svg)

![](https://ubuntourist.codeberg.page/Altair-8800/_images/not-gate.svg)

Because these gates are the backbone of Boolean algebra and often combined, new gates are made to represent a combination of both.

NAND and NOR gates both take the blank circle of the NOT gate and add them to the end of their gate, which visually represents a NAND or NOT gate respectively.


*The EXCLUSIVE-OR circuit can be used to implement logical functions, but it can also be used to add two input conditions. Since electronic logic circuits utilize only two numerical units, 0 and 1, they are compatible with the binary number system, a number system which has only two digits. For this reason, the EXCLUSIVE-OR circuit is often called a binary adder.*


EXOR GATE
![](https://ubuntourist.codeberg.page/Altair-8800/_images/half-adder.svg)

![](https://ubuntourist.codeberg.page/Altair-8800/_images/xor-gate.svg)

*Various combinations of logic circuits can be used to implement numerous electronic functions. For example, two NAND circuits can be connected to form a bistable circuit called a flip-flop*

### Section C. Number Systems
Computers need a way to turn those 1s and 0s into numbers. This is where binary, octal, and hexadeciaml systems come in.

Binary is two-bit system, octal is eight-bit, hexadecimal is sixteen-bit

More to come in the next section

### Section D. Binary System

*The ALTAIR 8800 performs nearly all operations in binary. A typical binary number processed by the computer incorporates 8-bits and may appear as: 10111010. A fixed length binary number such as this is usually called a word or byte, and computers are usually designed to process and store a fixed number of words (or bytes).*

| DECIMAL | BINARY |
|---------|---------|
|0|0|
|1|1|
|2|10|
|3|11|
|4|100|
|5|101|
|6|110|
|7|111|
|8|1000|
|9|1001|
|10|1010|

2 to 4, 4 to 8, 8 to 16, the number of digits increases by one
Change 0s to 1s until each respective column is filled and add another zero at the end following the leading 1.