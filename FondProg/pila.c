#include <stdio.h>
#include <stdlib.h>

struct nodo{
	int info;
	struct nodo* next;
	};
typedef struct nodo nodo;


nodo* push(nodo* head, int v){
	nodo* aux=malloc(sizeof(nodo));
	(*aux).info=v;
	(*aux).next=head;
	return aux;
}

nodo* pop(nodo* head){
	nodo* aux=NULL;
	if(head!=NULL){
		aux=(*head).next;
		free(head);
	}
	return aux;
}

void print(nodo* head){
	while(head!=NULL){
		printf("%d\n", (*head).info);
		head=(*head).next;		
	}
	
	
}

int main(){
	nodo* head=NULL;
	int v;
	while(v>=0){
		scanf("%d", &v);
		if(v>0){
			head=push(head, v);
		}else if(v<0){
			print(head);		
		}else{
			head=pop(head);		
		}
	}
	return 0;
}

