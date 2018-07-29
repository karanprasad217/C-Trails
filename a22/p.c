#include<stdio.h>
void swap(int *a,int *b){
int temp;
temp=*a;
*a=*b;
*b=temp; 
}
int main(){
int num1,num2;
printf("Enter the first number ::: ");
scanf("%d",&num1);
printf("Enter the second number ::: ");
scanf("%d",&num2);
printf("Addresses %d and %d contain numbers %d and %d respectively.\n",&num1,&num2,num1,num2);
swap(&num1,&num2);
printf("Now the addresses %d and %d contain numbers %d and %d respectively. \n",&num1,&num2,num1,num2);
return 0;
}
