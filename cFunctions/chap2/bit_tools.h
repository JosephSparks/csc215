/*
Authors: Cyrus Haywoon, Julissa Hernandez, Nathaniel Levin, Sheel Shah,
         Joseph Sparks, Edward Welch, and Jeffrey Elkner

Date: 16 November 2023

Description:
    A collection of functions useful for writing and debugging functions
    using bitwise operators.

    char* byte2bitstr(byte):
        Takes an unsigned char (byte) as an argument and returns a string of 8
        characters '0' or '1' representing the bits in the byte.

    unsigned char invert(byte, p, n):
        Takes a byte (unsigned char) as and argument and returns a new byte
        with the n bits beginning at position p of the argument inverted
        (1s become 0s and 0s become 1s).

    unsigned char rightrot(byte, n):
        Rotates n bits of byte to the right. Example: 42 (000101010) rotated
        by 3 bits will yield 010000101 (69).

    char bitcount(byte):
        Takes an unsigned char as an argument and returns the number of
        bits in it that are 1s.

    unsigned char setbits(byte, p, n, byte2):
        Sets the n bits of byte beginning at position p to the lower order
        n bits of byte2.
*/

char* byte2bitstr(unsigned char byte);
unsigned char invert(unsigned char byte, char p, char n);
unsigned char rightrot(unsigned char byte, char n);
char bitcount(unsigned char byte);
unsigned char setbits(unsigned char byte, char p, char n, unsigned char byte2);

void print_binary_byte(unsigned char n) {
    unsigned short mask = 128;
    while (mask > 0) {
        printf("%c", ((n & mask) == 0) ? '0' : '1');
        mask = mask >> 1;
    }
}

void print_binary_short(unsigned short n) {
    unsigned short mask = 32768;
    while (mask > 0) {
        printf("%c", ((n & mask) == 0) ? '0' : '1');
        mask = mask >> 1;
    }
}
