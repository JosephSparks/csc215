#include <stdio.h>

int main()
{
    int c, b1;
    b1 = 0;
    while ((c = getchar()) != EOF)
        if (c == ' ') {
            ++b1;
            if (b1 <= 1)
                putchar(c);
        }
        else  /* c != ' ' */
        {
            b1 = 0;
            putchar(c);
        }

    return 0;
}
