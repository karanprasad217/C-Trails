#include<stdio.h>

void stringcat(char *c,char *d){
int count1=0;
int count2=0;
char check[]="";
int i=0;
int j=0;

do{
count1++;
}while(c[i++]!=check[0]);
//printf("%d\n",count1);

do{
count2++;
}while(d[j++]!=check[0]);

int co2 = count2;
count2 = 0;
//char c[count1+co2];
count1--;
for(i=0;i<co2;i++){
c[count1++] = d[count2++];
}

//printf("%s",d);
}

int main(){
char a[] = "Karan is nice boy.";
char b[] = " He loves a certain someone.";
stringcat(a,b);
printf("%s",a);
printf("\n");
return 0;
}
