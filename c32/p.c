//stock buy and sell || buying and selling after one day
#include<stdio.h>
int main(){
int arr1[]={100,102,300,450,40,50,120,510,600,490};
int count=sizeof(arr1)/4;
int i=0,j=1,jack=0,diff=0;
while(i<count-1){
i=jack;
j=jack+1;
diff=0;
if(arr1[i]<arr1[j]){
diff=arr1[j]-arr1[i];
printf("The profit of buying ont day %d, and selling on day %d is %d.\n",i+1,j+1,diff);
}//if
jack++;
}//while
}//main
