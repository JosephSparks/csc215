#include <stdio.h>

/* Counting characters in inpit */

main()
{
    long nc;

    nc = 0;
    while (getchar() != EOF)
        ++nc;
    printf("%ld\n", nc);
}