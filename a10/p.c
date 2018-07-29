#include<stdio.h>
int main(){
int a,sum,i;
printf("Till what you want to calculate the sum of natural numbers ?\n Ans :: ");
scanf("%d",&a);
i=1;
sum=0;
while(i<=a){
sum += i;
i++;
}
printf("The sum till %d is %d.\n",a,sum);
return 0;
}
