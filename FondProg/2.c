#include <stdio.h>
#include <stdlib.h>

void fun(int *a, int i){
	int k=0;
	int t;
	int j;
	while(k==0){
		for(j=0; j<i-1; j++){
			if(a[j]>a[j+1]){
				t=a[j];
				a[j]=a[j+1];
				a[j+1]=t;
				k=1;
			}else{
			}
		}
		if(k==0){
			k=1;
		}else{
			k=0;
		}
	}
}

int main(){
	int j=0;
	int i=0;
	scanf("%d", &j);
	printf("dammi l'array \n");
	int a[j];
	for(i=0; i<j; i++){
		scanf("%d", &a[i]);
		printf("preso %d \n", i+1);
	}
	fun(a, j);
	for(i=0; i<j; i++){
		printf("%d\t", a[i]);
	}
return 0;	
}
