/*
Author: Joseph Sparks

Date: 15 November 2023

Description:
    This program takes in two in two 8-bit unsigned characters, x and n, and rotates x to the right
    n times, outputting the result.

    One constraint of the program is that any rightmost bit value needs to be "wrapped back around" to the leftmost bit. This is not typically what occurs, which adds a layer of complexity to our problem.
    It can be accomplished by using conditional checks on the lowest-order bit of x. If the bit is 1, we take the OR of our rotated x and 128 in binary, ensuring the highest-order bit of the rotated x is 1, while maintaing all other values.

Example:
    The unsigned character 12 will be stored in binary as 00001100. Calling rightrot(12,2) should return 3, or 00000011.
    The program does this by decrementing n by 1 after each rotation, ensuring only the desired number of bits are rotated. Rotating a binary number to the right is arithmetically congruent to dividing it by 2, and because we rotate 12 twice, the result is 3.
*/

#include <stdio.h>

/*rightrot:  rotates x to the right by n bit positions */
unsigned char rightrot(unsigned char x, unsigned char n)
{
    while (n > 0) /* n corresponds to the number of bit positions, which will decrement down */ {
        // The following lines are meant to check if the lowest-order bit is a 1. If the bit is a 1, it is 'wrapped around' to the highest-order bit, preserving its value.*/
        if (x & 1)   /* This statement checks if the rightmost bit is 1 by "and-ing" x with 0b00000001. If the result contains a 1, it would return true, flagging us that the rightmost bit of x is 1*/
            x = (x >> 1) | 0b10000000; /* By shifting x to the right by 1, it 'deletes' the rightmost one. To wrap the value back to the left, we then OR it with 128 in binary, or 10000000, ensuring all values of x are maintained while changing its leftmost bit to a 1.*/
        else        /* If the rightmost bit is not a 1, it simply shifts it to the right */
            x = x >> 1;
        --n; /* Because we only want to shift x by n times, we decrement n BEFORE we reuse the value, ensuring we do not shift it an additional number of times */
    }
    return x;
}

int main()
{
    printf("Before     After\n");
    printf("%u     %u\n", 12, rightrot(12, 2));
    printf("%u     %u\n", 1, rightrot(1, 1));
    printf("%u     %u\n", 124, rightrot(124, 2));
    return 0;
}