#include <stdio.h>

int main() {
    printf("Number of bits in ~0U: %zu bits\n", 8 * sizeof(unsigned short));
    return 0;
}