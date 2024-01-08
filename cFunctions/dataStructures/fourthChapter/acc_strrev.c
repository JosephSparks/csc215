#include <stdio.h>
#include <string.h>
int main()
{
    char str[100], reverse_str[100], temp;
    int i=0, j=0;
    printf("\nEnter a string : ");
    fgets(str, 100, stdin);
    j = strlen(str) -  1;
    while(i<j)
    {
        temp = str[j];
        reverse_str[j] = str[i];
        reverse_str[i] = temp;
        i++;
        j--;
    }
    printf("\nThe reversed string is : ");
    puts(reverse_str);
    return 0;
}