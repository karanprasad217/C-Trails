#include<stdio.h>
#define ANSI_RED "\x1b[32m"
#define ANSI_DEFAULT "\x1b[0m"
int main(){
float num=0;
float cel;
printf("Enter the fahranheit temperature you want to convert into celsius ::: ");
scanf("%f", &num);
cel = 5*(num-32)/9;
printf("In Fahranheit :::"ANSI_RED" %.3f\n"ANSI_DEFAULT, num);
printf("In Celsium :::"ANSI_RED" %.3f\n"ANSI_DEFAULT, cel);
return 0;
}
