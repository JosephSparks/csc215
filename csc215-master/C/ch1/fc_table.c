#include <stdio.h>

#define LOWER -56    /* lower limit of tempature table */
#define UPPER 260    /* upper limit */
#define STEP 8       /* step size */

/* print Fahrenheith-Celsius table
   for fahr = -56, -48, -40, ..., 300 */
int main()
{
    int fahr;

    for (fahr = LOWER; fahr <= UPPER; fahr += STEP)
        printf("%3d %6.1f\n", fahr, (5.0/9.0)*(fahr-32));

    return 0;
}
