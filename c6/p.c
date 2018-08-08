//trapping rain water.
#include<stdio.h>
int main(){
int a[]={6,2,5,0,2,9,10};
int i=0,count=0,ori=0;
for(i=0;a[i]<10;i++){
count++;
}
--count;
ori = count;
i=0;
int sum=0;
if(a[0]>a[ori]){
for(i=count;i>-1;i--){
if(a[ori]>a[i]){
sum+=a[ori]-a[i];
}
else{continue;}
}//for
}//if

else if(a[0]<a[ori]){
for(i=0;i<ori;i++){
if(a[0]>a[i]){
sum+=a[0]-a[i];
}
else{continue;}
}
}

printf("The structure will support %d units of water.\n",sum);
}//main

