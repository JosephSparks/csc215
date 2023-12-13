#include <stdio.h>
#include <math.h>

int main()
{
    double n;

    printf("Enter a float value: ");
    scanf("%lf", &n);

    int integralTruncated = n / 1;
    int finalResult = integralTruncated % 10;
    
    printf("%d",finalResult);
}