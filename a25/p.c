#define ANSI_ANY1 "\x1b[42m"
#define ANSI_ANY2 "\x1b[0m"
#include<stdio.h>
void strcp(char c[],char d[]){
int i=0;
int j=0;
//char check[] = "";
printf("Original string is ::: %s\n",d);
//printf("%s\n",d);
do{
c[i++]=d[j++];
}while(*(d+j-1)!='\0');
}

int main(){
char a[] = "Karan is awesome. He loves Pema Dukpa.";
char b[] = "";
//printf("%s",a);
strcp(b,a);
printf("Copied string is :::"ANSI_ANY1" %s \n"ANSI_ANY2,b);
return 0;
}
