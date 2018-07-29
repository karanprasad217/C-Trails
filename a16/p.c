#include<stdio.h>
int main(){
int alpha,vertical,count;
printf("Enter the number of rows the structure should be of ::: ");
scanf("%d",&vertical);
count=1;
alpha=0;
do{
     do{
	   printf("+ ");
	   alpha++;
		}while(alpha<count);
printf("\n");
alpha=0;
count++;
}while(count<vertical+1);
}
