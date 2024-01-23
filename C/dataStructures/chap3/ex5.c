#include <stdio.h>

int main(){
    int array[15] = {78,67,90,67,78,78,89,90,80,78,67,90,89,78,90};

    int i;
    int sum = 0;
    int arraySize = sizeof(array) / sizeof(array[0]);

    for(i=0;i<arraySize;i++){
        sum += array[i];
    }

    printf("Sum of array: %d\n", sum);
    printf("Mean of array: %d", sum / arraySize);
}