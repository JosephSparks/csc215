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
void acc_low2up(const char *str, char *upStr){
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
int acc_strcmp(const char *str1, const char *str2) {
    int i = 0, len1 = strlen(str1), len2 = strlen(str2);

    while (i < len1 && i < len2) {
        if (str1[i] != str2[i]) {
            if (str1[i] > str2[i]) {
                return 1; // str1 is greater than str2
            } else {
                return -1; // str2 is greater than str1
            }
        }
        i++;
    }

    if(len1 == len2){
        return 0; // Both strings are equal
    } else if (len1 > len2) {
        return 1; // str1 is greater than str2
    } else {
        return -1; // str2 is greater than str1
    }
}

// Exercise 5
void acc_strextr(const char *str, char *substr, int m, int n){
    int i,j;
    i = m - 1;
    while(str[i] != '\0' && n > 0){
        substr[j] = str[i];
        i++;
        j++;
        n--;
    }
    substr[j] = '\0';
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

// Exercise 7
char* acc_strinsrt(char* text, char* ins_str, char* merge_str, int pos){
    int i = 0, j = 0, k = 0;
    while(text[i] != '\0'){
        if (i == pos){
            while(ins_str[k] != '\0'){
                merge_str[j++] = ins_str[k++];
            }
        }
        merge_str[j++] = text[i++];
    }
    merge_str[j] = '\0';
    return merge_str;
}

// Exercise 8
char* acc_delsub(char* text, char* str, char* new_text){
    int i = 0, j = 0, found = 0, n = 0, copy_loop = 0;
    int k;
    while(text[i] != '\0'){
        j = 0, found = 0, k = i;
        while(text[k] == str[j] && str[j] != '\0'){
            k++;
            j++;
        }
        if(str[j] == '\0'){
            copy_loop = k;
        }
        new_text[n] = text[copy_loop];
        i++;
        copy_loop++;
        n++;
    }
    return new_text;
}