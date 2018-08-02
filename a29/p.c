#include<stdio.h>
void reve(char b[]){
int i,count=0;
char z[]="";
char temp;
i=0;
do{
count++;
}while(b[i++]!=z[0]);
int check = count-2;
//printf("%d",count);
i=0;
do{
temp = b[i];
b[i++]=b[check];
b[check--]=temp;
}while(i<check+1);

}//~

int main(){
char a[3000];
printf("Enter the string you want to reverse ::: ");
gets(a);
reve(a);
printf("Your reverse string ::: \n%s\n",a);
}
