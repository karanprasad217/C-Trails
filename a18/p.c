#include<stdio.h>
#include<math.h>
int main(){
int num1,count,ori,ori1;
printf("Enter the number you want to check is an armstrong number ::: ");
scanf("%d",&num1);
ori = num1;
ori1 = num1;
count = 0;
do{
num1 /= 10;
count++;
}while(num1>0);
int sum = 0;
do{
sum += pow(ori1%10,count);
ori1 /= 10;
}while(ori1>0);
(sum == ori)?printf("Yes, the number %d is an armstrong number.\n",ori):printf("No, the number %d is not an armstrong number.\n",ori);
return 0;
}
