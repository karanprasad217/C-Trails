#include<stdio.h>
int main(){
int n;
do{
printf("Enter a value : ");
scanf("%d",&n);
} while(n<=0);
printf("You entered a +ve number %d\n",n);
return 0;
}
