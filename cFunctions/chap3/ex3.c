#include <stdio.h>

int main()
{
    char word[] = 'Haywood';
    char;
    int i, counter = 0;

    for(i = 0; word[i]; i++)
    {
        if(word[i]=='a'||word[i] =='e'||word[i]=='i'||word[i]=='o'||word[i]=='u'||word[i]=='A'||word[i]=='E'||word[i]=='I'||word[i]=='O'||word[i]=='U')
        {
            counter++;
        }
    }
    printf("# of vowels in word: %d", counter);
}