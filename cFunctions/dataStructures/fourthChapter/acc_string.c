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