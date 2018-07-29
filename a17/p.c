#include<stdio.h>
int main(){
int count,num;
printf("Enter the number you want to count the digits of ::: ");
scanf("%d",&num);
count = 0;
do{
num /= 10;
count++;
}while(num>0);
printf("Number of digits in number are ::: %d\n",count);
return 0;
}
