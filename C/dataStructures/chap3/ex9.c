#include <stdio.h>

int main(){
    int array[4][4] = {{1,2,3,4},
                        {2,3,4,5},
                        {3,4,5,6},
                        {4,5,6,7}};

    int i,j;
    int arraySize = sizeof(array) / sizeof(array[0]);
    int product = 1;

    for(i=0,j=1;i<arraySize && j<arraySize;i++,j++){
        product *= array[i][j];
    }

    printf("Product of values above the main diagonal: %d\n", product);
}