#include<stdio.h>
int main(){
unsigned long long mul;
int num1,ori;
printf("Enter the number you want to find the factorial of ::: ");
scanf("%d",&num1);
ori=num1;
mul=1;
do{
mul *= num1;
num1--;
}while(num1>1);
printf("Factorial of %d is ::: %llu \n",ori,mul);
}
