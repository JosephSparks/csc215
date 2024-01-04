#include <stdio.h>
#include <string.h>

int main()
{
    char text[100], str[20], ins_text[120];
    // i is index check for position, j is the index for text, k is the index for str
    int i=0, j=0, k=0, pos;
    printf("Enter your main text: ");
    fgets(text, 100, stdin);
    printf("\nEnter your to-be-inserted string: ");
    fgets(str, 20, stdin);
    printf("\nEnter the position at which you want the text to be inserted: ");
    scanf("%d", &pos);

    while(text[i] != '\0')
    {
        if(i==pos)
        {
            while(str[k] != '\0')
            {
                ins_text[j]=str[k];
                j++;
                k++;
            }
        }
        else
        {
            ins_text[j]=text[i];
            j++;
        }
        i++;
    }
    ins_text[j]='\0';
    printf("\n The new string is : ");
    puts(ins_text);
    return 0;
}