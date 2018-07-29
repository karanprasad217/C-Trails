#define ANSI_ANY1 "\x1b[45m"
#define ANSI_ANY2 "\x1b[0m"
#include<stdio.h>
int main(){
int check,num1,num2,notprime,prime;
printf("Enter the number you want to check is prime : ");
scanf("%d", &num1);
num2 = num1/2;
//printf("%d\n",num2);
check = 2;
notprime=0;
prime=0;
do{
	if(num1%check==0){
		printf("Other factors ::: "ANSI_ANY1" %d\n"ANSI_ANY2,check);
		notprime++;
	}
	else{
		prime++;
	}
check++;
}while(check<=num2);
(notprime!=0)?printf(ANSI_ANY1"No,"ANSI_ANY2" the number %d is "ANSI_ANY1"not a prime.\n"ANSI_ANY2,num1):printf(ANSI_ANY1"Yes,"ANSI_ANY2" the number %d "ANSI_ANY1"is a prime.\n"ANSI_ANY2,num1);
return 0;
}
