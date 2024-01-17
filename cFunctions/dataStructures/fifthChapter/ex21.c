#include <stdio.h> 
#include <string.h>

int main()
{
    char str[100]; 
    int i,j;
    printf ("\n Enter the string: "); 
    fgets(str, 100, stdin); 

    for(int i = 0; str[i] != '\0'; i++) {
        if(str[i] == ';') {
            for(int j = i; j++;) {
                str[j] = str[j + 1];
            }
            i--; // Move back to recheck the current position
        }
    }

    // Period to commas
    for(int i = 0; str[i] != '\0'; i++) {
        if (str[i] == '.') {
            str[i] = ',';
        }
    }
}