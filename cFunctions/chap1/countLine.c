#include <stdio.h>

/* Counting lines in input*/
int main()
{
    int c, nl; /* create file and number of lines variables*/

    nl = 0; /* set newline = 0 */
    while ((c = getchar()) != EOF) /* getchar() until end of file (EOF) */
        if (c == '\n') /* look for '\n', if c = newspace then increment */
            ++nl;
    printf("%d\n", nl);
}