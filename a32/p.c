#include<stdio.h>
int main(){
FILE *p1;
char ch;
p1=fopen("kp.txt","w");
if(p1=='\0'){
printf("The File Is Empty.");
}
while((ch=getchar())!=EOF){ // getc(stdin) gives the same thing
putc(ch,p1);
}
fclose(p1);
p1=fopen("kp.txt","r");
while((ch=getc(p1))!=EOF){
printf("%c",ch);
}
return 0;
}
