#include<stdio.h>
int main(){
int count,n;
count = 0;
do{
printf("Enter the integer : ");
scanf("%d",&n);
if(n<0){
printf("You entered a negative integer so the program will terminate.\n");
break;
}
count++;
if(count==14){
printf("WARNING!!! TOO MANY INPUTS!!!\n");
}
}while(count<15);
return 0;
}
