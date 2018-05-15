function x=inf_solve(L,b)
%risolve un sistema con L triangolare inferiore
	s=size(L);
	n=s(1);
	x=b; %x "vettore di accumulatori"
	for i=1:n
		x(i)=x(i)/L(i,i);
		x(i+1:n)=x(i+1:n) - L(i+1:n,i)*x(i);
	end
end