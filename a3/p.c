#include<stdio.h>
#define  CYAN "\x1b[36m"
#define  DEFAULT "\x1b[0m"

int length(char art[]){
int i = 0 ;
while(art[i]!='\0'){
i++;
}
return i;
}

int main(){
char art[200];
printf("Enter the string you want to find the length of ::: ");
gets(art);
printf("The String you entered is ::: "CYAN"%s \n"DEFAULT, art);
printf("The length of the string is ::: "CYAN"%d \n"DEFAULT, length(art));
return 0;
}
