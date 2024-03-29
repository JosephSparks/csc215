#include <stdio.h>

typedef struct distance
{
    int kms;
    int meters;
    int cms;
} DISTANCE;

DISTANCE add_distance (DISTANCE, DISTANCE);
DISTANCE subtract_distance (DISTANCE, DISTANCE);
DISTANCE d1, d2, d3, d4;
int main()
{
    int option;
    do
    {
        printf("\n ******** MAIN MENU *********");
        printf("\n 1. Enter the distances");
        printf("\n 2. Display the distances");
        printf("\n 3. Add the distances");
        printf("\n 4. Subtract the distances");
        printf("\n 5. EXIT");
        printf("\n Enter your option: ");
        scanf("%d", &option);
        switch(option)
        {
            case 1:
                printf("\n Enter the first distance in kilometers, meters, and centimeters: ");
                scanf("%d %d %d", &d1.kms, &d1.meters, &d1.cms);
                printf("\n Enter the second distance in kilometers, meters, and centimeters: ");
                scanf("%d %d %d", &d2.kms, &d2.meters, &d2.cms);
                break;
            case 2:
                printf("\n The first distance is: %d kms %d meters %d cms",
                d1.kms, d1.meters, d1.cms);
                printf("\n The second distance is : %d kms %d meters %d cms",
                d2.kms, d2.meters, d2.cms);
                break;
            case 3:
                d3 = add_distance(d1, d2);
                printf("\n The sum of two distances is: %d kms %d meters %d cms",
                d3.kms, d3.meters, d3.cms);
                break;
            case 4:
                d4 = subtract_distance(d1, d2);
                printf("\n The difference between two distances is: %d kms %d meters %d cms",
                d4.kms, d4.meters, d4.cms);
                break;
        }
    }while(option != 5);
        return 0;
}
DISTANCE add_distance(DISTANCE d1, DISTANCE d2)
{
    DISTANCE sum;
    sum.cms = d1.cms + d2.cms;
    sum.meters = d1.meters + d2.meters;
    sum.kms = d1.kms + d2.kms;

    while (sum.cms >= 100)
    {
        sum.cms = sum.cms % 100;
        sum.meters += 1;
    }

    while (sum.meters >= 1000)
    {
        sum.meters = sum.meters % 1000;
        sum.kms += 1;
    }
    return sum;
}

DISTANCE subtract_distance(DISTANCE d1, DISTANCE d2)
{
    DISTANCE sub;
    if(d1.kms > d2.kms){
        sub.cms = d1.cms - d2.cms;
        sub.meters = d1.meters - d2.meters;
        sub.kms = d1.kms - d2.kms;
    } else{
        sub.meters = d2.meters - d1.meters;
        sub.kms = d2.kms - d1.kms;
    }
    if(sub.meters < 0){
        sub.kms = sub.kms - 1;
        sub.meters = sub.meters + 1000;
    }
    if(sub.cms < 0){
        sub.meters = sub.meters - 1;
        sub.cms = sub.cms + 100;
    }
    return sub;
}