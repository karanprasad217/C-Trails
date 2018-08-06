#include<stdio.h>
#include<stdlib.h>
struct nano
{
char c;
struct nano *link;
};

int main(){
//struct nano pil;
struct nano *head = (struct nano *)malloc(sizeof(struct nano));
struct nano *temp = head;
//pil.c='K';
temp->c='K';
temp->link->c='A';
printf("%c\n",temp->link->c);
return 0;
}
