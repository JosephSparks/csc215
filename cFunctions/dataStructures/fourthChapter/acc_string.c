#include <stdio.h>
#include <stdlib.h>
#include "acc_string.h"

int main(){
    char str[30] = "Astrophysics";
    printf("Testing acc_strlen\n");
    if(strlen(str) == acc_strlen(str)){
        printf("Success!");
    }
    else{
        printf("Failure");
    }

    printf("\nTesting acc_strlow2up\n");
    printf("%s",acc_low2up(str));

    printf("\nTesting acc_strcat\n");
    char str2[30] = "Chinese";
    printf("%s", acc_strcat(str,str2));

    printf("\nTesting acc_strcmp\n");
    return 0;
}

