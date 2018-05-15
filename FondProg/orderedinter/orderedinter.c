#include <stdio.h>
#include <stdlib.h>

struct elemento_lista{
	int info;
	struct elemento_lista* next;
};
typedef struct elemento_lista ell;
typedef ell* list;

void inizializza(list* lista){				//inizializza lista: perfettamente inutile
	*lista=NULL;
}

int vuota(list* lista){						//controlla se lista vuota: perfettamente inutile
	return (*lista==NULL);
}

void printl(list lista){					//stampa valori della lista
	while(lista!=NULL){
		printf("%d\n", lista->info);
		lista=lista->next;
	}
}

void aggCima(list* lista, int data){		//aggiunge elemento dalla cima
	ell* new=malloc(sizeof(ell));
	(*new).info=data;
	(*new).next=*lista;
	*lista=new;
}

void cancList(list* lista){						//cancella tutta la lista
	while(*lista!=NULL){
		ell* aux=*lista;
		*lista=(*(*lista)).next;
		free(aux);
	}
}

int cercaListnum(list lista, int data){			//conta quante volte compare in tutta la lista
	int t=0;
	while(lista!=NULL){
		if((*lista).info==data) t++;
		lista=(*lista).next;
	}
	return t;
}	

int cercaList(list lista, int data){			//ricerca in tutta la lista
	int t=0;
	while(lista!=NULL && t==0){
		if((*lista).info==data){
			t++;
		}else{
			lista=(*lista).next;
		}
	}
	return t;
}

void CancOcc(list *lista, int data){			//cancella primo elemento con info=data
	ell* scroll=*lista;   //scorre la lista
	ell* prev;            //tiene in memoria l'elemento precedente
	
	if(*lista!=NULL){
		if((*scroll).info==data){
				*lista=(*scroll).next;
				free(scroll);
		}else{
			while((*scroll).next!=NULL && (*scroll).info!=data){
				prev=scroll;
				scroll=(*scroll).next;
			}
			if((*scroll).next!=NULL){
				(*prev).next=(*scroll).next;
				free(scroll);
			}else{
				if((*scroll).info==data){
					(*prev).next=NULL;
					free(scroll);
				}
			}
		}
	}
}

int main(){

	return 0;
}
