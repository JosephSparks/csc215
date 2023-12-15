#include <stdio.h>

int main(){
    int first[3][3] = {{2,4,5},
                        {7,4,2},
                        {1,9,8}};
    
    int second [3][3] = {{3,6,9},
                        {4,7,1},
                        {5,8,7}};

    int third [3][3] = {0};

    int i,j;

    for(i=0;i<3;i++){
        for(j=0;j<3;j++){
            third[i][j] = first[i][j] + second[i][j];
        }
    }
    
    // Print statements
    printf("Matrix 1:" );
    for(i=0;i<3;i++){
        printf("\n");
        for(j=0;j<3;j++){
            printf("%d ", first[i][j]);
        }
    }
    printf("\n\n");

    printf("Matrix 2:" );
    for(i=0;i<3;i++){
        printf("\n");
        for(j=0;j<3;j++){
            printf("%d ", second[i][j]);
        }
    }
    printf("\n\n");

    printf("Matrix 3:" );
    for(i=0;i<3;i++){
        printf("\n");
        for(j=0;j<3;j++){
            printf("%d ", third[i][j]);
        }
    }
    printf("\n\n");
}