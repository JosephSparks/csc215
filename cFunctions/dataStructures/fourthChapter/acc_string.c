#include <stdio.h>
#include <stdlib.h>
#include "acc_string.h"

void main(){
    char str[30] = "Astrophysics";
    printf("Testing acc_strlen\n");
    if(strlen(str) == acc_strlen(str)){
        printf("Success!");
    }
    else{
        printf("Failure");
    }
}

