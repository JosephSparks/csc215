#include <stdio.h>


struct DOB{
    int day;
    int month;
    int year;
};

struct student{
    int roll_no;
    char name[100];
    float fees;
    struct DOB date;
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
    printf("Enter the student's birth month, day, and year separated by spaces: ");
    scanf("%d %d %d", &stud1.date.month, &stud1.date.day, &stud1.date.year);

    return stud1;
}

int main()
{
    struct student stud1 = createStudent();

    printf("\n ********STUDENT'S DETAILS *******");
    printf("\n ROLL No. = %d", stud1.roll_no);
    printf("\n NAME = %s", stud1.name);
    printf("\n FEES = %.2f", stud1.fees);
    printf("\n DOB = %d-%d-%d\n", stud1.date.month, stud1.date.day, stud1.date.year);
    return 0;
}
