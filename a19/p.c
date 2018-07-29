#include<stdio.h>
int main(){
int jack,row;
printf("Enter the number of rows the structure should be composed of ::: ");
scanf("%d",&row);
int count = 1;
int check;
do{
check=0;
do{
printf(" ");
check++;
}while(check<row-count+1);
jack = 0;
do{
printf("*");
jack++;
}while(jack<2*count-1);
count++;
printf("\n");
}while(count<row+1);
return 0;
}


