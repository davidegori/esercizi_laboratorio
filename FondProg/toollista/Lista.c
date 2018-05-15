#include <stdio.h>
#include <stdlib.h>

// 

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

void printlgraf(list lista){					//stampa valori della lista con grafica
	while(lista!=NULL){
		printf("%d->", lista->info);
		lista=lista->next;
	}
	printf("//");
}

void printlric(list lista){					//stampa valori della lista ricorsivamente
	if(lista!=NULL){
		printf("%d->", lista->info);
		printl(lista->next);
	}else{
		printf("//");
	}
}

void aggCima(list* lista, int data){		//aggiunge elemento dalla cima
	ell* new=malloc(sizeof(ell));
	(*new).info=data;
	(*new).next=*lista;
	*lista=new;
}

void cancCima(list* lista){					//cancella elemento dalla cima
	if(*lista!=NULL){
		ell* aux=*lista;
		*lista=(*(*lista)).next;
		free(aux);
	}
}

void cancList(list* lista){						//cancella tutta la lista
	while(*lista!=NULL){
		ell* aux=*lista;
		*lista=(*(*lista)).next;
		free(aux);
	}
}

void cancListric(list* lista){					//cancella tutta la lista ricorsivamente
	if(*lista!=NULL){
		ell* aux=*lista;
		*lista=(*(*lista)).next;
		free(aux);
	}
	cancListric(lista);
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

void aggFondo(list *lista, int data){			//aggiunge elemento dal fondo finireee casspita
	list listap=*lista;
	ell* new=malloc(sizeof(ell));
	(*new).info=data;
	(*new).next=NULL;
	if(*lista==NULL){
		*lista=new;
	}else{
	while((*listap).next!=NULL){
		listap=(*listap).next;
	}
	(*listap).next=new;
	}
}

void aggFondoric(list lista, int data){			//aggiunge elemento dal fondo ricorsiva
	if((*lista).next!=NULL){
		aggFondoric((*lista).next, data);
	}else{
		ell* new=malloc(sizeof(ell));
		(*new).info=data;
		(*new).next=NULL;
		(*lista).next=new;
	}
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
	list lista=malloc(sizeof(ell));
	lista=NULL;
	int i=0;
	int v;
	while(i==0){
		scanf("%d", &v);
		if(v<0){
			CancOcc(&lista, -v);
		}else{
			if(v==0){
				printl(lista);
				i=1;
			}else{
				if(v%2==0){
					aggCima(&lista, v);
				}else{
					aggFondo(&lista, v);
				}
			}
		}
	}
	return 0;
}
