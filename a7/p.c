#include<stdio.h>
int main(){
int first, second, third;
printf("Enter the first number ::: ");
scanf("%d", &first);
printf("Enter the second number ::: ");
scanf("%d", &second);
printf("Enter the third number ::: ");
scanf("%d", &third);
printf("First\t:::\t%d\nSecond\t:::\t%d\nThird\t:::\t%d\n",first,second,third);
if((first>second)&&(first>third)){
printf("First number i.e %d is the largest amongst the three.\n",first);
}
else if(second>third){
printf("Second number i.e %d is the largest amongst the three.\n", second);
}
else{
printf("Third number i.e %d is the largest amongst the three.\n", third);
}
return 0;
}
