#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char* string;

void rev(string s){
		int i;
		for(i=strlen(s)-2; i>=0; i--) printf("%c", *(s+i));
	}
	
int main(){
	string s=calloc(40, sizeof(char));
	fgets(s, 40, stdin);
	rev(s);
	return 0;
}
