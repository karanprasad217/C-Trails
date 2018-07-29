#define ANSI_ANY1 "\x1b[32m"
#define ANSI_ANY2 "\x1b[0m"
#include<stdio.h>
int main(){
int op1,op2;
char op3;
printf("Enter the first operand ::: ");
scanf("%d",&op1);
printf("Enter the second operand ::: ");
scanf("%d",&op2);
printf("Enter the operator ::: ");
scanf(" %c",&op3);
//printf("%c\n",op3);
switch(op3){
case '+' : printf("The sum of two numbers %d & %d is ::: "ANSI_ANY1"%d.\n "ANSI_ANY2,op1,op2,op1+op2);break;
case '-' : printf("The subtraction of two numbers %d & %d is ::: "ANSI_ANY1"%d.\n "ANSI_ANY2,op1,op2,op1-op2);break;
case '*' : printf("The multiplication of two numbers %d & %d is ::: "ANSI_ANY1"%d.\n "ANSI_ANY2,op1,op2,op1*op2);break;
case '/' : printf("The division of two numbers %d & %d is ::: "ANSI_ANY1"%d.\n "ANSI_ANY2,op1,op2,op1/op2);break;
default : printf("Enter a operator amongst these : '+'  '-'  '*'  '/'\n");
}
return 0;
}
