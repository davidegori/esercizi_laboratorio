#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char* string;

int pal(string s){
		int i;
		int j=1;
		for(i=0; i<strlen(s)-1 && j; i++) if(*(s+strlen(s)-2-i)!=*(s+i)) j=0;
		return j;
		printf("all");
	}
	
int main(){
	string s=calloc(40, sizeof(char));
	printf("all");
	fgets(s, 40, stdin);
	printf("all");
	printf("%d", pal(s));
	return 0;
}
