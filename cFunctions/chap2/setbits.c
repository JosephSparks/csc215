#include <stdio.h>
#include <ctype.h>

void printBinary(unsigned n) {
    if (n > 1)
        printBinary(n >> 1);
    printf("%d", n & 1);
}

unsigned setbits(unsigned x, int p, int n, unsigned y);

int main() {
    unsigned x = 213; // number 1
    unsigned y = 121; // number 2
    int p = 4;       // position value (4 bits from the right)
    int n = 4;       // number of bits taken from the second number

    unsigned r = setbits(x, p, n, y);
    printf("Result: %u (Binary: ", r);
    printBinary(r);
    printf(")\n");
    return 0;
}

unsigned setbits(unsigned x, int p, int n, unsigned y) {
    return x & ~(~(~0U << n) << (p + 1 - n)) | ((y & ~(~0U << n)) << (p + 1 - n));
}