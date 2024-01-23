#include <stdio.h>

int main()
{
    int n;

    printf("Enter an integer: ");
    scanf("%d", &n);

    printf("Number in decimal: %d\n", n);
    printf("Number in octal: %o\n", n);
    printf("Number in hexadecimal: %X\n", n);
}