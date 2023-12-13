#include <stdio.h>

int main(){
    int array[20] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
    12, 13, 14, 15, 16, 17, 18, 19, 20};


    // Printing original array
    int i;
    printf("Original Array: ");
    for(i=0;i<20;i++){
        printf("%d ", array[i]);
    }


    // Square and print array
    printf("\nSquared Array: ");
    for(i=0;i<20;i++){
        array[i] = array[i] * array[i];
        printf("%d ", array[i]);
    }
}