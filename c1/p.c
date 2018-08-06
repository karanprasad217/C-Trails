#include<stdio.h>
int main(){
int i;
unsigned long long int nun=0,mul=1,num2=0,check=2,cous=0,do1,act;
char num1[3000],e[]="",*p,zero='0';
printf("Enter the number you want to multiply with the power of 5 ::: ");
gets(num1);
printf("Enter the power of 5 you want to use ::: ");
scanf("%lu",&num2);
for(i=0;i<num2;i++){
mul*=check;
}

p=num1;
i=0;
do{
cous++;
}while(p[i++]!=e[0]);
cous--;
printf("The number %s X 5^%lu is ::: ",num1,num2);
unsigned long long int cou=cous;
i=0;
do{
num1[cous++]=zero;
cou++;
}while(i++<num2-1);

unsigned long long int sum=0;
i=0;
//int coust = cou;
cou--;
unsigned long long int mui=1;
for(i=0;cou>0;i++){
sum=num1[i]-'0';
do1=cou;
do{
mui*=10;
do1--;
}while(do1>0);
nun+=sum*mui;
//printf("%d\n",mui);
cou--;
mui=1;
}
//actual number
printf("%llu\n",nun/mul);
}
