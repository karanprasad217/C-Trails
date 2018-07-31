#include<stdio.h>
int power(int a, int b){
int mul=1;
do{
mul *= a;
b--;
}while(b>0);
return mul;
}
int main(){
int mul,num,pow;
printf("Enter the number(base) ::: ");
scanf("%d",&num);
printf("Enter the exponent(power) ::: ");
scanf("%d",&pow);
int jack = power(num,pow);
printf("The number %d raised to %d is %d.\n",num,pow,jack);
return 0;
}
