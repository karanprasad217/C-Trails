#define ANSI_ANY1 "\x1b[34m"
#define ANSI_ANY2 "\x1b[35m"
#define ANSI_DEFAULT "\x1b[0m"
#include<stdio.h>
int main(){
int kara;
printf("Enter the integer : ");
scanf("%d", &kara);
(kara%2==0)?printf(ANSI_ANY1"Yes,"ANSI_DEFAULT" the number %d is even.\n", kara):printf(ANSI_ANY2"No,"ANSI_DEFAULT" the number %d is odd.\n", kara);
return 0;
}

