#include <stdio.h>

int main(){
    int matrix[4][4] = {{10, 20, 30, 40},
                        {5, 15, 25, 35},
                        {45, 5, 10, 15},
                        {20, 25, 30, 35}};

    int i,j;
    int sum = 0;
    int arraySize = sizeof(matrix) / sizeof(matrix[0]);

    for(i=0,j=0;i<arraySize && j<arraySize;i++,j++){
        sum += matrix[i][j];
    }
    
    printf("Sum of the main diagonal: %d\n", sum);
}