#include <stdio.h>
#include <stdlib.h>
#include "acc_string.h"

int main(){
    const char str[30] = "Astrophysics";
    printf("Testing acc_strlen\n");
    if(strlen(str) == acc_strlen(str)){
        printf("Success!");
    }
    else{
        printf("Failure");
    }

    printf("\nTesting acc_strlow2up\n");
    char upStr[30];
    printf("%s", acc_low2up(str,upStr));

    printf("\nTesting acc_strcat\n");
    char str2[30] = "Chinese";
    printf("%s", acc_strcat(str,str2));

    printf("\nTesting acc_strcmp\n");
    if(acc_strcmp(str,str) != strcmp(str, str)){
        printf("Failure");
    }
    else {
        printf("Success!");
    }

    printf("\nTesting acc_strextr");
    char extractedStr[6] = "Astro";
    if(strcmp(extractedStr,acc_strextr(str,1,5))){
        printf("Success!");
    }
    else{
        printf("Better luck next time");}
    return 0;
}

