#include <stdio.h>
#include <stdlib.h>
#include <string.h>


// Exercise 1
int acc_strlen(char *str){
    int i = 0;
    while(str[i] != '\0'){
        i++;
    }
    return i;
}

// Exercise 2
char acc_low2up(char *str){
    char str[100], upStr[100];
    int i = 0;
    while(str[i] != '\0'){
        if(str[i] >= 'a' && str[i] <= 'z')
            upStr[i] = str[i] - 32;
        else
            upStr[i] = str[i];
        i++;
    }
}

// Exercise 3
char* acc_strcat(char *destinationStr, char *sourceStr){
    int i = 0, j = 0;
    while(destinationStr[i] != '\0'){
        i++;
    }
    while(sourceStr[j] != '\0'){
        destinationStr[i] = sourceStr[j];
        i++;
        j++;
    }
    destinationStr[i] = '\0'
}