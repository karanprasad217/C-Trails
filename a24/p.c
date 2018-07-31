#include<stdio.h>
int common(char c[],char d[],int count3, int count4){
int i,j;
for(i=0;i<count3;i++){
for(j=0;j<count4;j++){
if(c[i]==d[j]){
return 1;
}
}
}
return 0;
}

int main(){
char a[] ="abcdefg";
char b[] ="pqrst";
char c[] ="";
int count1 =0;
int count2 =0;
int i=0,j=0;
do{
count1++;
}while(a[i++]!=c[0]);
do{
count2++;
}while(b[j++]!=c[0]);
--count1;
count2--;
int jack = common(a,b,count1,count2);
/*
count1--;
count2--;
printf("%d\n",count1);
printf("%d\n",count2);
*/
(jack == 1)?printf("Yes, the array has something in common.\n"):printf("No, the array has nothing in common.\n");
return 0;
}

