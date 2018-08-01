// Compile 
// > gcc p.c
// > ./a.out < yourfilename.txt
#include<stdio.h>
int main(){
int count = 0,i=0;
for(i=0;getchar()!=EOF;count++){
}
printf("The file is %d characters long.\n",count-1);
}
