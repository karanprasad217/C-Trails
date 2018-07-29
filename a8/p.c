#include<stdio.h>
int main(){
int num;
printf("Enter the number corresponding to weekday ::: ");
scanf("%d",&num);
switch(num){
case 1 : printf("This day is Monday.\n");break;
case 2 : printf("This day is Tuesday.\n");break;
case 3 : printf("This day is Wednesday.\n");break;
case 4 : printf("This day is Thrusday.\n");break;
case 5 : printf("This day is Friday.\n");break;
case 6 : printf("This day is Saturday.\n");break;
case 7 : printf("This day is Sunday.\n");break;
default : printf("Enter a number between 1 and 7.\n");break;
}
return 0;
}

