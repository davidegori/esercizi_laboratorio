#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char* string;

	
int main(){
	int i;
	scanf("%d", &i);
	string p[]={"uno", "due", "tre", "quattro", "cinque", "sei", "sette", "otto", "nove", "dieci", "undici", "dodici", "tredici", "quattordici", "quindici", "sedici", "diciassette", "diciotto", "diciannove", "venti", "ventuno", "ventidue", "ventitre", "ventiquattro", "venticinque", "ventisei", "ventisette", "ventotto", "ventinove", "trenta", "trentuno", "trentadue", "trentatre", "trentaquattro", "trentacinque", "trentasei", "trentasette", "trentotto", "trentanove", "quaranta", "quarantuno", "quarantadue", "quarantatre", "quarantaquattro", "quarantacinque", "quarantasei", "quarantasette", "quarantotto", "quarantanove", "cinquanta", "cinquantuno", "cinquantadue", "cinquantatre", "cinquantaquattro", "cinquantacinque", "cinquantasei", "cinquantasette", "cinquantotto", "cinquantanove", "sessanta", "sessantuno", "sessantadue", "sessantatre", "sessantaquattro", "sessantacinque", "sessantasei", "sessantasette", "sessantotto", "sessantanove", "settanta", "settantuno", "settantadue", "settantatre", "settantaquattro", "settantacinque", "settantasei", "settantasette", "settantotto", "settantanove", "ottanta", "ottantuno", "ottantadue", "ottantatre", "ottantaquattro", "ottantacinque", "ottantasei", "ottantasette", "ottantotto", "ottantanove", "novanta", "novantuno", "novantadue", "novantatre", "novantaquattro", "novantacinque", "novantasei", "novantasette", "novantotto", "novantanove", "cento"};
	printf("%s", p[i-1]);
	return 0;
}
