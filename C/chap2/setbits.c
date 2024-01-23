#include <stdio.h>

void print_binary(unsigned short n) {
    unsigned short mask = 32768;
    while (mask > 0) {
        printf("%c", ((n & mask) == 0) ? '0' : '1');
        mask = mask >> 1;
    }
}

void break_it_down(unsigned short x, char p, char n, unsigned short y) {
    printf(
        "%s%18s                 Rightmost %d bits of y shifted %d bits.\n",
        "x",
        "y",
        n,
        p
    );
    print_binary(x);
    printf("  ");
    print_binary(y);
    printf("  ");
    print_binary((y & ~(~0U << n)) << (p + 1 - n));
    printf("\n");
    printf("xmask             x & xmask         x & xmask | shifted y\n");
    print_binary(~(~(~0U << n) << (p + 1 - n)));
    printf("  ");
    print_binary(x & ~(~(~0U << n) << (p + 1 - n)));
    printf("  ");
    print_binary(
        x & ~(~(~0U << n) << (p + 1 - n)) | ((y & ~(~0U << n)) << (p + 1 - n))
    );
    printf("\n");
}

unsigned short setbits(unsigned short x, char p, char n, unsigned short y) {
  char shift = p + 1 - n;
  unsigned short xmask = ~(~(~0U << n) << shift);
  unsigned short shifted_y_bits = (y & ~(~0U << n)) << shift;
  // x & ~(~(~0U << n) << (p + 1 - n)) | ((y & ~(~0U << n)) << (p + 1 - n));
  return x & xmask | shifted_y_bits;
}

int main() {
    unsigned short r = setbits(545, 6, 3, 133);
    printf("Result: %u  Binary: ", r);
    print_binary(r);
    printf(".\n");
    break_it_down(545, 6, 3, 133);

    return 0;
}