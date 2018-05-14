function B1(n)
A=ones(n,2*n-1);
for i = 1:n
	for j=n-i+1:n+i-1			%(n+1)-(i-1):(n+1)+(i-1)
		A(i,j)=i^2+1-i+j-n;		%(i-1)^2+j-(n-i+1)+1
	end
end
c=crivello(n^2);
z=c(A);
imshow(1+z, [1 1 1 ; 0 0 1]);
