#include <stdio.h>
#include <stdlib.h>
enum mangiare {
	0,
	1,
	2,
};

struct gatto{
    int nome;
    int eta;
    double peso;
    mangiare cibo;
};

typedef struct gatto gatto;

int main(){
	int n;
	int i;
	scanf("%d", &n);
	gatto a[n];
	for(i=0; i<n; i++){
		scanf("%d", &a[i].nome);
		scanf("%d", &a[i].eta);
		scanf("%lf", &a[i].peso);
		scanf("%d", &a[i].cibo);
	}
	double k; //media pesi
	for(i=0; i<n; i++){
	k=k+a[i].peso;
	}
	
	for(i=0; i<n; i++){
		if(a[i].eta<4 && a[i].peso>k){
			printf("%d ", i);
			switch(a[i].cibo){
				case 0:
					printf("crocchette");
				case 1:
					printf("scatolette");
				case 2:
					printf("tonno");	
			}
		}
	}	
	return 0;
}
