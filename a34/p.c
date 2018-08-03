#include<stdio.h>
int main(){
char cahr;
int count;
while((cahr=getchar())!=EOF){
if(cahr=='\n'){
count++;
}
}
printf("Number of lines in the files are ::: %d\n",count);
return 0;
}
