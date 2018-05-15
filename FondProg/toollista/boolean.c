#include <stdio.h>
#include <stdlib.h>

struct elemento_lista{
	int info;
	struct elemento_lista* next;
};
typedef struct elemento_lista ell;
typedef ell* list;


int main(){
	int i;
	scanf("%d", &i);
	int k=(0==i);
	printf("%d", k);


	return 0;
}
