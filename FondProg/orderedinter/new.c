#include <stdio.h>
#include <stdlib.h>

struct elemento_lista{
	int info;
	struct elemento_lista* next;
};
typedef struct elemento_lista el;
typedef el* list;

void printl(el* head){
	while(head!=NULL){
		printf("%d\n", (*head).info);
		head=(*head).next;
	}
}

void aggord(el** head, int data){
	el* scroll=*head;
	el* prev=NULL;
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


void cancList(list* lista){						//cancella tutta la lista
	while(*lista!=NULL){
		el* aux=*lista;
		*lista=(*(*lista)).next;
		free(aux);
	}
}

el** merge(el* l, el* p){
	el** lr=malloc(sizeof(el*));
	int i=0;
	if(p==NULL || l==NULL) i=1;
	while(i==0){
		if(p!=NULL && (*l).info>(*p).info) p=(*p).next;
		if(l!=NULL && (*l).info<(*p).info) l=(*l).next;
		if(p!=NULL && l!=NULL && (*l).info==(*p).info){
			if(*lr==NULL || (*p).info!=(**lr).info)
				aggord(lr, (*p).info);				   				//lo so, lo so è computazionalmente sbagliata, ma non c'ho voglia di scrivere
			l=(*l).next;
			p=(*p).next;
		}
		if(l==NULL || p==NULL) i=1;
	}
	return lr;
}


int main(){
	list l=NULL;
	list li=NULL;
	list lf=NULL;
	int i=0;
	int v;
	while(i==0){
		scanf("%d", &v);
		if(v>=0){
			aggord(&l, v);
		}else{
			i=1;
		}
	}
	while(i==1){
		scanf("%d", &v);
		if(v>=0){
			aggord(&li, v);
		}else{
			i=2;
		}
	}	
	lf = *merge(l, li);
	printl(lf);
	cancList(&li);
	cancList(&lf);
	cancList(&l);
	return 0;
}
