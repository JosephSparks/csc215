#include <stdio.h>

int power(int m, int n);

/* Power function */
int main()
{ 
    int i;
    printf("i  i^2  i^-3\n"); /* Improved print statement to help organize output*/
    for (i = 0; i < 10; i++) /* Starting at 0, if i is less than 10, do power operations and then increment*/
        printf("%d %d %d\n", i, power(2,i), power(-3,i));
    return 0;
}

/* Raise base to the n-th power; n>= 0 */
int power(int base, int n)
{
    int i, p;

    p = 1;
    for (i = 1; i <= n; ++i) /* This program does exponentiation by multiplying the base by p (which is set equal to the new product after every loop) until i increments to n*/
        p = p * base;
    return p;
}