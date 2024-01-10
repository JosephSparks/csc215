#include <stdio.h>
#include <stdlib.h>
#include "acc_string.h"

int main(){
    char str[30] = "Astrophysics";
    printf("Testing acc_strlen\n");
    if(strlen(str) == acc_strlen(str)){
        printf("Success!");
    } else{
        printf("Failure");
    }

    printf("\nTesting acc_strlow2up\n");
    char upStr[30];
    acc_low2up(str,upStr);
    printf("%s", upStr);

    printf("\nTesting acc_strcat\n");
    char str2[30] = "Chinese";
    printf("%s", acc_strcat(str,str2));

    printf("\nTesting acc_strcmp\n");
    if(acc_strcmp(str,str2) != strcmp(str,str2)){
        printf("Failure");
    }
    else {
        printf("Success!");
    }

    printf("\nTesting acc_strextr\n");
    char extractedStr[30];
    acc_strextr(str,extractedStr,1,5);
    if(strcmp(extractedStr,"Astro")){
        printf("Success!");
    }
    else{
        printf("Better luck next time");}
    return 0;
}

