#include <stdio.h>
#include <ctype.h>

unsigned setbits(unsigned x, int p, int n, unsigned y);
/* output should be an unsigned integer represented by bits*/

int main()
{
    unsigned x = 123; /* number 1*/
    unsigned y = 456; /* number 2 */
    int p = 3; /* position value (3 bits from the right) */
    int n = 3; /* number of bits taken from second number */

    unsigned r = setbits(x, p, n, y);
    printf("%u\n", r);
}
unsigned setbits(unsigned x, int p, int n, unsigned y){
    return x & ~(~(~0 << n) << (p + 1 - n)) | (y & ~(~0 << n)) << (p + 1 - n);
}