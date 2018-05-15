#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char* string;

int pal(string s){
		int i;
		int j=1;
		for(i=0; i<strlen(s)-1 && j; i++) if(*(s+strlen(s)-1-i)!=*(s+i)) j=0;
		return j;
	}
	
int main(){
	int N;
	int i;
	scanf("%d", &N);
	string* p=calloc(N, sizeof(string));
	for(i=0; i<N; i++) *(p+i)=calloc(40, sizeof(char));
	for(i=0; i<N; i++) scanf("%s",*(p+i));
	for(i=0; i<N; i++) if(pal(*(p+i))==1) printf("%s\n", *(p+i));
	for(i=0; i<N; i++) if(pal(*(p+i))==0) printf("%s\n", *(p+i));
	return 0;
}

