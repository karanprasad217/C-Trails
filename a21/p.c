#include<stdio.h>
int main(){
int num1,num2,num3,count,check;
printf("Enter the first number of the fibonnaci sequence ::: ");
scanf("%d",&num1);
printf("Enter the second number of the fibonanci sequence ::: ");
scanf("%d",&num2);
printf("How many numbers do you want in the fibonacci sequence including the two ?\n ANS ::: ");
scanf("%d",&count);
check=0;
printf("%d %d ",num1,num2);
do{
num3 = num1+num2;
printf("%d ",num3);
num1=num2;
num2=num3;
check++;
}while(check<count-2);
printf("\n");
return 0;
}
