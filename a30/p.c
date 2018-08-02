#define ANSI_ANY "\x1b[46m"
#define ANSI_ANY2 "\x1b[0m"
#include<stdio.h>

void rest(char b[], char rep){
char e[]="";
int count = 0,i=0,j=0;
int ce;
do{//do1
count++;
}while(b[i++]!=e[0]);//do1
int loop=count;
i=0;
j=0;
do{//do2
if(b[i]==rep){
j=i;
do{if(b[i]!=rep){b[j]=b[i];j++;}}while(i++<loop);
}//if
}while(i++<loop);//do2
}// main

int main(){
char a[3000];
char replace;
printf(ANSI_ANY"Enter the paragraph you want to edit ::: \n"ANSI_ANY2);
gets(a);
printf(ANSI_ANY"Enter the charater you want to eliminate ::: \n"ANSI_ANY2);
scanf("%c",&replace);
printf(ANSI_ANY"Edited parapraph ::: \n"ANSI_ANY2);
rest(a,replace);
printf("%s\n",a);
}
