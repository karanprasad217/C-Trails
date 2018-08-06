#include<stdio.h>
#include<stdlib.h>
struct node 
{
int x;
struct node *link;
};

struct node *head;
struct node *t3;
struct node *t4;//begin new node
struct node *t5;
struct node *t6;//end new node

void insertIntoBegin(struct node *t3){
int new1;
char ncha1;
t4 = (struct node *)malloc(sizeof(struct node));
printf("Enter the number you want to insert into the beginning :::\n");
scanf("%d",&new1);
t4->x=new1;
t4->link=t3;
t3=t4;
head=t4;
printf("Do you want to print the series ::: y/n\n ");
scanf(" %c",&ncha1);
if(ncha1='y'){
while(t3!=NULL){
printf("%d ",t3->x);
print(t3->link);
break;
}
}
}

int insertToEnd(struct node *t5){
int new2;
t6 = (struct node *)malloc(sizeof(struct node));
printf("Enter the number you want to insert at the end :::\n");
scanf(" %d",&new2);
t6->x=new2;
t6->link=NULL;
increment(t5->link);
//printf("%d\n",t5->link->link->x);
}

int increment(struct node *t5){
if(t5->link==NULL){
t5->link=t6;
}
else{
increment(t5->link);
}
return 0;
}

int main(){
int insertInto(struct node *),print(struct node *),insertAtEnd(struct node *);
int select,nir1;
printf("1. Create a linked list.\n");
printf("2. Enter an element to the first of linked list.\n");
printf("3. Enter an element to the end of the linked list.\n");
printf("4. Print the list of numbers you entered.\n");
printf("Your Choice ::: ");
scanf("%d",&select);
nir1=0;
head = (struct node *)malloc(sizeof(struct node));
do{
switch(select){
case 1://createNode("Print me");
{
//struct node *head = (struct node *)malloc(sizeof(struct node));
printf("Enter the integer into data section ::: ");
scanf("%d",&nir1);
head->x=nir1;
insertInto(head);
//printf("%d",head->link->x);
//print(head);
break;
}

case 2: {insertIntoBegin(head);}break;

case 3: {insertToEnd(head);}break;

case 4: {printf("The entered list of numbers is ::: \n");print(head);}break;

default: printf("You should choose only 1 at the moment.");
}//Error:: Label can only be used as a part of statement and declaration is not a statement.
printf("\nYour choice ::: ");
scanf("%d",&select);
}while(select>0||select<2);//do

free(head);
free(t3);
free(t4);
free(t5);
free(t6);

return 0;
}

int insertInto(struct node *head){
int nir;
head->link=(struct node*)malloc(sizeof(struct node));
printf("Enter the integer into data section ::: ");
scanf("%d",&nir);
head->link->x=nir;
printf("Do you wish to conitnue making node ::: y/n\n");
char nano;
scanf(" %c",&nano);
if(nano=='y')
insertInto(head->link);
else
head->link->link=NULL;
}

int print(struct node *temp){
while(temp!=NULL){
printf("%d ",temp->x);
print(temp->link);
return temp;
}
}

/*
char createNode(char a[]){
printf("%s",a);
}
*/

