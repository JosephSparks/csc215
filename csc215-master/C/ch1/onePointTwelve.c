#include <stdio.h>

#define IN 1   /* inside a word */
#define OUT 0  /* outside  word */

/* print input one word per line */

int main()
{
    int c, state;
    state = IN;

    while ((c = getchar()) != EOF) 
    {
        if (state == IN)
        {
            if (c == ' ' || c == '\t' || c == '\n') {
                putchar('\n');
                state = OUT;
            }
            else
                putchar(c);
        }
        else if (state == OUT)
        {
            if (c != ' ' && c != '\t' && c != '\n')
                putchar(c);      /* Shushan missing one transition task */
                state = IN;
        }
    }
    return 0;
}
