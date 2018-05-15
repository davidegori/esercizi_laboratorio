#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double pot(double b, int n){
	if(n==1) return b;
	if(n%2==0){
		return pot(b*b, n/2);
	}else{
		return b*pot(b*b, n/2);
	}
}

int main(){
	double p=(1+sqrt(5))/2;
	int n;
	scanf("%d", &n);
	printf("%.0lf\n", (pot(p, n)-1/(pot(-p, n)))/sqrt(5));
	return 0;
}






