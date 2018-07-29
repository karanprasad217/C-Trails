
#include<stdio.h>
int main(){
int new,count,sum;
count=1;
sum=0;
do{
printf("Enter the %d number : ",count);
scanf("%d",&new);
count++;
if(new>0){
sum += new;
}
}while(count<16);
printf("The sum of positive number out of 15 numbers are : %d\n",sum);
return 0;
}
