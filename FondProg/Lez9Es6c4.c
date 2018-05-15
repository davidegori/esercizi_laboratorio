#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char* string;

void merge(string s, string p, string q){
		printf("%s\n", s);
		printf("%s\n", p);
		printf("%s\n", q);
		printf("%s %s %s", s, p, q);
	}
	
int main(){
	int i;
	string* p=calloc(3, sizeof(string));
	for(i=0; i<3; i++) *(p+i)=calloc(40, sizeof(char));
	for(i=0; i<3; i++) scanf("%s",*(p+i));
	merge(*p, *(p+1), *(p+2));
	return 0;
}


