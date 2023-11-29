#include <stdio.h>

/* Counting characters in input */

int main() {
    long nc;

    nc = 0;
    while (getchar() != EOF) /* getchar() of input file, read until end*/
        ++nc; /* for each character (including spaces and newlines) increment by 1*/
    printf("%ld\n", nc);
}