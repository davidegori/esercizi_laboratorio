#include <stdio.h>
/*(c=getchar())!=EOF
questi due fanno la stessa cosa! sia printf che getchar si ricordano fin dove erano arrivati.
int main(){
	int c;
	printf("%c", EOF);
	while(c!='a'){
		c=getchar();
		putchar(c);
		}
	return 0;
}*/

int main(){
	char c;
	printf("%c", EOF);
	while(c!='a'){
		scanf("%c", &c);
		printf("%c", c);
		}
	return 0;
}
