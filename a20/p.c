#include<stdio.h>
#include<math.h>
int main(){
int num;
printf("Enter the number you want to check is a palindorme ::: ");
scanf("%d", &num);
int count =0;
int ori,ori1;
ori = num;
ori1 = num;
do{
num /= 10;
count++;
}while(num>0);
//printf("%d\n",count);
int sum = 0,rem;
do{
rem = ori1%10;
//printf("%d\n",rem);
count--;
sum += rem*pow(10,count);
ori1 /= 10;
}while(ori1>0);
//printf("%d",sum);
(ori==sum)?printf("Yes, the number %d is a palindrome.\n",ori):printf("No, the number %d is not a palindrome.\n",ori);
return 0;
}

