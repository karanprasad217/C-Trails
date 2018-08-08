//find the closest palidrome to the number
#include<stdio.h>
#include<math.h>
int main(){
int arrup[1]={};
int arrdown[1]={};
int num1=0,numx=0,ji=0;
printf("Enter the number you want enter :: \n");
scanf("%d",&num1);
int fordetail=num1;
//FOR UP
do{//main do-while
numx=num1;
int sum=0,count=0,newone=0,rem=0,power=0,addsum;
do{
count++;
num1/=10;
}while(num1>0);//number of digits

num1=numx;
power=count;
addsum=pow(10,power);
//printf("%d",addsum);

do{
rem=num1%10;
addsum/=10;
newone=newone+rem*addsum;
//printf("%d",newone);
num1/=10;
}while(num1>0);
//printf("sum is -> %d\n",newone);

ji=0;
if(newone==numx){
for(ji=0;ji<1;ji++){
arrup[ji]=newone;
}//for
}//if

num1=numx;

num1++;
//printf("%d\n",num1);
}while(ji<1);//main do-while
printf("closest palindrome found :: %d\n",arrup[0]);

num1=fordetail;
ji=0;

//FOR DOWN
do{//main do-while
numx=num1;
int sum=0,count=0,newone=0,rem=0,power=0,addsum;
do{
count++;
num1/=10;
}while(num1>0);//number of digits

num1=numx;
power=count;
addsum=pow(10,power);
//printf("%d",addsum);

do{
rem=num1%10;
addsum/=10;
newone=newone+rem*addsum;
//printf("%d",newone);
num1/=10;
}while(num1>0);
//printf("sum is -> %d\n",newone);

ji=0;
if(newone==numx){
for(ji=0;ji<1;ji++){
arrdown[ji]=newone;
}//for
}//if

num1=numx;

--num1;
//printf("%d\n",num1);
}while(ji<1);//main do-while
printf("closest palindrome found for down:: %d\n",arrdown[0]);

int subup = arrup[0]-fordetail;
int subdown = -arrdown[0]+fordetail;

(subup<subdown)?printf("The closest palindrome to %d is %d.",fordetail,arrup[0]):printf("The closest palindrome to %d is %d.",fordetail,arrdown[0]);

printf("%d\n",subup);
printf("%d\n",subdown);


}//main

