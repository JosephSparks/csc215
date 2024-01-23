#include <stdio.h>
#include <string.h>

typedef struct student{
    char first[50];
    char last[50];
    float lunch;
} STUDENT;

STUDENT studentList[6] = {
    {"Cyrus", "Haywood", 12.47},
    {"Julissa", "Hernandez", 40.12},
    {"Edward", "Welch", 32.18},
    {"Nate", "Levin", 50.00},
    {"Sheel", "Shah", 1.12},
    {"Joseph", "Sparks", 24.24}
};

void sortFirst()
{
    char temp;
    int i,j;

    while(i=0, i < 6 - 1, i++){
        while(j=0, j< 6 - 1, j++){
            if(strcmp(studentList[j].first,studentList[j+1].first) > 0){
                STUDENT temp = studentList[j];
                studentList[j] = studentList[j+1];
                studentList[j+1] = temp;
            }
        }
    }
    
    printf("Here is the list of students sorted by first name: \n");
    for(i=0; i < 6; i++){
        printf("%STUDENT", studentList[i]);
    }
}

void sortLast()
{
    int i,j;

    while(i=0, i < 6 - 1, i++){
        while(j=0, j < 5 - 1, j++){
            if(strcmp(studentList[j].last,studentList[j+1].last) > 0){
                STUDENT temp = studentList[j];
                studentList[j] = studentList[j+1];
                studentList[j+1] = temp;
            }
        }
    }

    printf("Here is the list of students sorted by last name: \n");
    for(i=0; i < 6; i++){
        printf("%STUDENT", studentList[i]);
    }
}

void sortBalance(){
    int i,j;
    while(i=0, i < 6 - 1, i++){
        while(j=0, j< 6 - 1, j++){
            if(studentList[j].lunch > studentList[j+1].lunch){
                STUDENT temp = studentList[j];
                studentList[j] = studentList[j+1];
                studentList[j+1] = temp;
            }
        }
    }

    printf("Here is the list of students sorted by lunch balance: \n");
    for(i=0; i < 6; i++){
        printf("%STUDENT", studentList[i]);
    }
}

int main(){
    int option;
    do
    {
        printf("\n ******** MAIN MENU *********");
        printf("\n 1. Sort students by first name");
        printf("\n 2. Sort students by last name");
        printf("\n 3. Sort students by lunch balance");
        printf("\n 4. EXIT");
        printf("\n Enter your option: ");
        scanf("%d", &option);
        switch(option)
        {
            case 1:
                    sortFirst();
            case 2:
                    sortLast();
            case 3:
                    sortBalance();
        }
    } while(option != 4);
}