#include<stdio.h>
int main(){
char a[]="karan";
int count=0,i=0;
printf("Your array :: %s\n",a);
do{
count++;
}while(a[++i]!=NULL);//do-while
//count ->> 11
//printf("%d\n",count);
int forloop=count;
int forarray=count-1;
i=0;
char temp=0;
for(i=0;i<forloop/2;i++){
temp=a[i];
a[i]=a[forarray];
a[forarray--]=temp;
}//for
printf("Your reversed array :: %s\n",a);
}//main


