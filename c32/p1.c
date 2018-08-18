#include<stdio.h>
#define MAX 10000
int main(){
int arr1[]={1000,140,160,80,90,200,250,220,300,440};
int count=sizeof(arr1)/4;
int i=0,j=1,k=0,diff=0;
int arr[MAX]={};
do{
for(j=0;j<count;j++){
diff=arr1[j]-arr1[i];
if(diff>0&&j>=i){
//printf("The profit of buying the shares at day %d and selling the share at day %d is %d.\n",i+1,j+1,diff);
arr[k++]=diff;
}//if
}//for
i++;
}while(i<count);//do-while

i=0;
int max=arr[0];
for(i=0;i<MAX;i++){
if(arr[i]>max){
max=arr[i];
}//if
}//for

//printf("%d",max);
i=0;
j=1;
diff=0;
do{
for(j=0;j<count;j++){
diff=arr1[j]-arr1[i];
if(diff>0&&j>=i&&diff==max){
printf("Maximum profit when Bought on Day %d and sold on Day %d. Profit = %d. \n",i+1,j+1,diff);
arr[k++]=diff;
}//if
}//for
i++;
}while(i<count);//do-while


}//main
