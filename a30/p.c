#define ANSI_ANY "\x1b[46m"
#define ANSI_ANY "\x1b[31m"
#define ANSI_ANY2 "\x1b[0m"
#include<stdio.h>

int rest(char b[], char rep, int col){
char e[]="";
int count = 0,i=0,j=0;
col=0;
do{//do1
count++;
}while(b[i++]!=e[0]);//do1
int loop=count;
//count
i=0;
do{if(b[i]==rep){col++;}}while(b[i++]!=e[0]);
//main
i=0;
j=0;
do{//do2
if(b[i]==rep){
j=i;
do{if(b[i]!=rep){b[j]=b[i];j++;}}while(i++<loop);
}//if
}while(i++<loop);//do2
return col; 
}// main

int main(){
char a[3000];
char replace;
int cxx;
printf(ANSI_ANY"Enter the paragraph you want to edit ::: \n"ANSI_ANY2);
gets(a);
printf(ANSI_ANY"Enter the charater you want to eliminate ::: \n"ANSI_ANY2);
scanf("%c",&replace);
int jack = resr(a,replace,cxx);
rest(a,replace,cxx);
printf(ANSI_ANY"Number of alphabets to be eliminated :::\n"ANSI_ANY2);
printf(ANSI_ANY3"%d\n"ANSI_ANY2,jack);
printf(ANSI_ANY"Edited parapraph ::: \n"ANSI_ANY2);
printf("%s\n",a);
}
