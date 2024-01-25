#include <stdio.h>

struct student
{
    int roll_no;
    char name[80];
    float fees;
    char DOB[80];
};

struct student createStudent()
{
    struct student stud1;

    printf("\nEnter the roll number: ");
    scanf("%d", &stud1.roll_no);
    printf("Enter the name: ");
    scanf("%s", stud1.name);  // Using %[^\n] to read a line with spaces
    printf("Enter the fees: ");
    scanf("%f", &stud1.fees);
    printf("Enter the DOB: ");
    scanf(" %s", stud1.DOB);

    return stud1;
}

int main()
{
    struct student stud1 = createStudent();

    printf("\n******** STUDENT'S DETAILS *******");
    printf("\nROLL No. = %d", stud1.roll_no);
    printf("\nNAME = %s", stud1.name);
    printf("\nFEES = %.2f", stud1.fees);
    printf("\nDOB = %s\n", stud1.DOB);

    return 0;
}