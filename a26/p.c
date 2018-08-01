#include<stdio.h>

void strct(char c[],char d[]){
char e[] = "";
int count = 0;
int count2 = 0;
do{
count = count++;
}while(c[count++] != e[0]);
printf("%d\n",count);
//Concatenate

do{
printf("karan\n");
c[count++]=d[count2++];
}while(*(d+count2)!=e[0]);
}
int main(){
char a[] = "Karan is cool.";
char b[] = "Kuch aur batao.";
strct(a,b);
printf("Concatenated string is ::: %s \n",a);
return 0;
}

