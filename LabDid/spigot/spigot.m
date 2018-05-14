function s=spigot(n)
#calcolo la n esima cifra (aggiusto con->)
n=n-2;
c =[4, -2, -1, -1];
b =[1, 4, 5, 6];
s=0;
for i=1:4
	for k=0:n
		s=s+c(i)*(fexp(16, n-k, 8*k+b(i))/(8*k+b(i)));
		s-=floor(s);
	end
end
%ora devo aggiustare
j=0;
while (1-s*16^7+floor(s*16^7))*16^(-7)< 1/(16^j*15)
	%conto su j il numero di volte che ho aggiunto
	j+=1
	h=n+j;
	s=s+1/(16^j)*[4/(8*h+1)-2/(8*h+4)-1/(8*h+5)-1/(8*h+6)];
end
s-=floor(s);
k=zeros(1, 6);
for i=1:6
	k(i)=floor(16*s);
	s=16*s-floor(16*s);
end
k
end