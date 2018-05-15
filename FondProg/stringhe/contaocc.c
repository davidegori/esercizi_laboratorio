#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char* string;

int coont(char c, string s){
	int j=0;
	int i;
	for(i=0; i<40; i++) if(*(s+i)==c) j++;
	return j;
	}
int main(){
	string s=calloc(40, sizeof(char));
	fgets(s, 40, stdin);
	char c;
	scanf("%c", &c);
	printf("%d", coont(c, s));
	return 0;
}
