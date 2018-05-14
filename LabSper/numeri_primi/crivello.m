function primi = crivello(n)
primi = ones(1,n);
m = round(sqrt(n));
primi(1) = 0;
for i = 2 : m
	primi(2*i:i:n) = 0;
end