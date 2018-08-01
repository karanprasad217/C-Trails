#include<stdio.h>
int stringcmp(char c[],char d[]){
int i=0;
char e[]="";
int count=0,j=0;
int iot1,iot2;
do{
count++;
}while(c[j++]!=e[0]);
//printf("%d\n",count);
do{
do{
iot1 = c[i];
iot2 = d[i];
//printf("%d-iot1\n",iot1);
//printf("%d-iot2\n",iot2);
if((c[i]=d[i])=='\0'){
return 0;
}
}while((c[i]=d[i])=='\0');
if(iot1==iot2){
i++;
}
else{
return iot1-iot2;
}
}while(i<count);
}

int main(){
char a[]="KaraN";
char b[]="Karan";
//int judge1 = stringcmp(a,b);
int judge = stringcmp(a,b);
//printf("T%d\n",judge1+1);
//printf("The two character arrays a and b differ in character at position %d and the difference is %d\n",judge1,judge);
printf("Difference between the two character arrays a & b is %d.\n",judge);
return 0;
}
