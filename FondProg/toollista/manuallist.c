
#include <stdio.h>
#include <stdlib.h>

struct elemento_lista{
	int info;
	struct elemento_lista* next;
};
typedef struct elemento_lista ell;
typedef ell* list;

void aggCima(list* lista, int data){
	ell* new=malloc(sizeof(ell));
	*new.info=data;
	*new.next=*lista;
	*lista=new;
}

void aggFondo(){}


int main(){
	/*
	list lista;
	ell E1;
	ell E2;
	ell E3;
	ell E4;
	ell E5;

	lista=&E1;
	E1.info=1;
	E1.next=&E2;
	E2.info=2;
	E2.next=&E3;
	E3.info=3;
	E3.next=&E4;
	E4.info=4;
	E4.next=&E5;
	E5.info=5;
	E5.next=null;
	*/
	
	ell E1;
	ell E2;
	ell E3;
	ell E4;
	ell E5;

	lista=&E1;
	lista->info=1;
	lista->next=&E2;
	(lista->next)->info=2;
	(lista->next)->next=&E3;
	((lista->next)->next)->info=3;
	((lista->next)->next)->next=&E4;
	(((lista->next)->next)->next)->info=4;
	(((lista->next)->next)->next)->next=&E5;
	((((lista->next)->next)->next)->next)->info=5;
	((((lista->next)->next)->next)->next)->next=null;
	// si può fare anche senza parentesi
	return 0;
}
