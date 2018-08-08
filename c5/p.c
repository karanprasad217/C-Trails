//Equillibrium Point
#include<stdio.h>
int main(){
char cp(int),nk[2];
int a[]={1,3,4,2,8};
int i=0,subadd=0,sumadd=0,temp=0;
printf("Your Numbers ::: \n");
for(i=0;i<5;i++){ 
printf("%d ",a[i]);
}
printf("\n");
for(i=0;i<5;i++){
temp=i;
subadd=0;
while(i>0){
subadd+=a[--i];
}
//printf("%d ",subadd);
i=temp;
sumadd=0;
while(i<4){
sumadd+=a[++i];
}
i=temp;
//printf("%d ",sumadd);
if(subadd==sumadd){
if(i==1){nk[2]="st";}
else{nk[2]="th";}
printf("Equillibrium Point reached at %d %s position from the first.\n",i+1,nk[1]);
break;}
}
}

