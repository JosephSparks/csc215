#include <stdio.h>
#include <string.h>
int main()
{
    char str[100], substr[100];
    int i=0, j=0, n, m;
    printf("Enter your primary string: ");
    fgets(str, 100, stdin);
    printf("\nEnter the position from which you want to start your substring: ");
    scanf("%d", &m);
    printf("\nEnter the length of the substring: ");
    scanf("%d", &n);

    i = m;
    while(str[i] != '\0' && n > 0)
    {
        substr[j] = str[i];
        i++;
        j++;
        n--;
    }
    substr[j] = '\0';
    printf("\nThe substring is: ");
    puts(substr);
    return 0;
}