#include <stdio.h>

int main()
{
    int marks[20][5]={{78,67,90,67,78},{78,89,90,80,78},{67,90,89,78,90},{69,40,89,88,67},{78,90,36,34,67},{56,45,89,34,90},{67,78,90,67,56},
                    {56,89,56,78,90},{67,90,34,23,89},{56,39,37,40,68},{90,99,78,89,67},{67,34,23,78,49},{37,70,34,23,39},{56,49,37,40,68},
                    {80,99,28,89,67},{47,34,23,78,49},{37,90,84,63,89},{56,99,37,40,98},{90,89,78,89,47},{77,34,93,98,29}};
    
    int i,j;
    float subjectAverage[5]={0};
    float studentAverage[20]={0};
    int sub50 = 0;

    // Calculate the average of 20 students across each subject
    // Running the for loop for each subject, then each student allows me to calculate the subject average

    for(j=0;j<5;j++){
        for(i=0;i<20;i++){
            subjectAverage[j] += (float)marks[i][j]; //Empty array subject average takes in the indexed value of the 
        }
    }

    // After the first for loop, the average is simply the sum.
    // Dividing it by the number of students turns it into the average for the 20 students
    for(j=0;j<5;j++){
        subjectAverage[j] /= 20.0;
    }

    // Now to calculate the student average: essentially the previous process but backwards
    for(i=0;i<20;i++){
        for(j=0;j<5;j++){
            studentAverage[i] += (float)marks[i][j];
        }
    }

    // Divide the studentAverage by 5, giving us the mean scores of each student
    for(i=0;i<20;i++){
        studentAverage[i] /= 5.0;
        if(studentAverage[i] < 50.0)
            sub50++;
    }

    //Print statements
    printf("Average grades for each course:\n");
    for(j=0;j<5;j++){
        printf("Course %d: %.2f\n", j+1, subjectAverage[j]);
    }

    printf("\nAverage grades for each student:\n");
    for(i=0;i<20;i++){
        printf("Student %d: %.2f\n", i+1, studentAverage[i]);
    }

    printf("There were %d students with a grade average below 50\n", sub50);

    return 0;
}