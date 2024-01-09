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
    destinationStr[i] = '\0';
    return destinationStr;
}

// Exercise 4
int acc_strcmp(char *str1, char *str2){
    int i = 0;
    int len1=strlen(str1), len2=strlen(str2);
    while(i < len1 && i < len2){
        if(str1[i] != str2[i]){
            if(str1[i] > str2[i]){
                // String 1 is GREATER than String 2
                return 1;
            }
            else{
                // String 2 is GREATER than String 1
                return -1;
            }
        }
    }
    i++;
}

// Exercise 5
char* acc_strextr(const char *str, int i, int j, int m, int n){
    char substr[100];
    i = m;
    while(str[i] != '\0' && n > 0){
        substr[j] = str[i];
        i++;
        j++;
        n--;
    }
    substr[j] = '\0';
    return substr;
}

// Exercise 6
char* acc_strrev(char *str){
    char temp;
    int i = 0, j = 0;
    j = strlen(str) - 1;
    while(i < j){
        temp = str[j];
        str[j] = str[i];
        str[i] = temp;
        i++;
        j--;
    }
    return str;
}