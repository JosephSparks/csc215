#include <stdio.h>

int main(){
    int array[20] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
    12, 13, 14, 15, 16, 17, 18, 19, 20};

    int firstSecond, lastSecond;
    firstSecond = array[1];
    int arraySize = sizeof(array) / sizeof(array[0]);
    lastSecond = array[arraySize - 1];
    array[1] = lastSecond;
    array[arraySize - 1] = firstSecond;

    printf("The original value of the second and second to last indexes are %d and %d\n", firstSecond, lastSecond);
    printf("\nThe current values of the second and second to last indexes are %d and %d", array[1], array[arraySize - 1]);
}