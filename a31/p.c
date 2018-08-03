#include<stdio.h>
int main(){
FILE *p1;
p1 = fopen("kp.txt","r");
if(p1==NULL){
printf("Error Reading File\n");
}
fseek(p1,0,SEEK_END);
int jack = ftell(p1);
fclose(p1);
printf("Number of characters in the file is ::: %d\n",jack);
}

