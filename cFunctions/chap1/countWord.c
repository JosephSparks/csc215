#include <stdio.h>

#define IN 1 /* Inside a word */
#define OUT 0 /* Outside a word */

/* Counting lines, words, and characters in input */
int main()
{
    int c, nl, nw, nc, state; /* Initialize variables as integers*/

    state = OUT; /* set state = 0, or false*/
    nl = nw = nc = 0; /* set number of lines, words, and characters to 0*/
    while ((c = getchar()) != EOF) { /* Read until end of file, for every character nc is incremented*/
        ++nc;
        if (c == '\n') /* Check for newline characters, if newline then increment nl by 1*/
            ++nl;
        if (c == ' ' || c == '\n' || c == '\t') /* Checking for spaces, newlines, and tabs to break up words.*/
            state = OUT; /* If any spaces, tabs, or newlines are present, change state to out, otherwise change state to IN (inside word) and increment number of words*/
        else if (state == OUT) { 
            state = IN;
            ++nw;
        }
    }
    printf("%d %d %d\n", nl, nw, nc);
}