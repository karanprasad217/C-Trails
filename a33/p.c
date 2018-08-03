#include<stdio.h>
#include<stdlib.h>
#define INITIAL 13
char *remote(char *,int);
int main(){
char *pon,cha;
int cont=0,capa=INITIAL;
pon = (char *)malloc(INITIAL);
while((cha=getchar())!=EOF){
if(cont==capa){
remote(pon,capa);
}
pon[cont++]=cha;
}
printf("%s\n",pon);
return 0;
}

char *remote(char *pon1,int pi){
return realloc(pon1,pi+INITIAL);
}

