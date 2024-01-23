#include <stdio.h> 
#include <string.h>

int main()
{
    char str[100];
    int i = 0, j = 0;
    printf ("\n Enter the string: "); 
    fgets(str, 100, stdin); 

    for(str[i] != '\0'; i++;){
        if(str[i] == ';'){
            j++;
            str[i] = str[i + 1];
            }
        }

    // Period to commas
    for(int i = 0; str[i] != '\0'; i++){
        if (str[i] == '.') {
            str[i] = ',';
        }
    }
}