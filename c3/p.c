#include<stdio.h>
#include<stdlib.h>
struct node{
int  data;
struct node *link;
};

struct node *head;
struct node *temp;
struct node *t1;

int main(){
int insertInto(struct node *);
int print(struct node *);
int checkIn(struct node *);
int nano(struct node *,struct node *);
int num1=0,jack17=0;
printf("1. Create a linked list first.\n");
printf("2. Print the entire linked list. \n");
printf("3. Check and insert the number. \n");
scanf("%d",&num1);
head = (struct node *)malloc(sizeof(struct node));
jack17=num1;
do{
num1=jack17;
switch(num1){
case 1: 
{
int jack1;
char feed;
temp=head;
printf("Enter the data in the node :: \n");
scanf("%d",&jack1);
temp->data=jack1;
printf("Do you wish to continue making nodes . y/n\n");
scanf(" %c",&feed);
if(feed=='y'){
insertInto(temp);
//printf("%d ",temp->link->data);
}
}break;

case 2: {print(head);printf("\n");temp=head;}break;

case 3: checkIn(head);break;

default: printf("ONLY OPTION VALID IS 1.\n");break;

}//switch-case

printf("Your choice ::: ");
scanf("%d",&jack17);
}while(jack17>0||jack17<9);//do


}//main


int insertInto(struct node * temp){
int jack1;
char jack2;
printf("Enter the data in the node :: \n");
scanf("%d",&jack1);
temp->link=(struct node *)malloc(sizeof(struct node));
temp->link->data=jack1;
//printf("%d ",temp->link->data);
printf("Do you wish to continue making node . y/n\n");
scanf(" %c",&jack2);
if(jack2=='y'){
insertInto(temp->link);
temp=head;
}
else{
return 1;
}
}

int print(struct node *temp){
while(temp!=NULL){
printf("%d ",temp->data);
print(temp->link);
return 1;
}
}

int scanl;

int checkIn(struct node *temp){
t1 = (struct node*)malloc(sizeof(struct node));
printf("Enter the data you want to insert :: ");
scanf("%d",&scanl);
t1->data=scanl;
nano(temp,t1);
}

int nano(struct node *temp,struct node *t1){
//printf("You are in\n");
while(temp->link!=NULL){
int zor1 = t1->data;
int zor2 = temp->data;
int zor3 = temp->link->data;
if(zor1>zor2&&zor1<zor3){
//t1->link=temp->link->link;
t1->link=temp->link;
temp->link=t1;
}
nano(temp->link,t1);
printf("Done\n");
return 1;
}//while
}

