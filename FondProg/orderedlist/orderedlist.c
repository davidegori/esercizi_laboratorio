#include <stdio.h>
#include <stdlib.h>

struct lista{
	int info;
	struct lista* next;
	};
typedef struct lista el;

void aggord(el** head, int data){
	el* scroll=*head;
	el* prev;
	el* aux=malloc(sizeof(el));
	(*aux).info=data;
	if(scroll!=NULL){
		if((*scroll).info<data){
			while(scroll!=NULL && (*scroll).info<data){
				prev=scroll;
				scroll=(*scroll).next;
			}
			(*aux).next=scroll;
			(*prev).next=aux;
		}else{
			(*aux).next=scroll;
			*head=aux;
		}
	}else{
		*head=aux;
		(*aux).next=NULL;
	}
}

void print(el* head){
	while(head!=NULL){
		printf("%d\n", (*head).info);
		head=(*head).next;
	}
}

int main(){
	el* head=NULL;
	int i=0;
	while(i>=0){
		scanf("%d", &i);
		if(i>=0) aggord(&head, i);
	}
	print(head);
	return 0;
}
