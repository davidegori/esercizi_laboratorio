function x=sup_solve(U,b)
%risolve un sistema con U triangolare superiore
	s=size(U);
	n=s(1);
	x=b; %x "vettore di accumulatori"
	for
		i=n:-1:1
		x(i)=x(i)/U(i,i);
		x(1:i-1)=x(1:i-1) - U(1:i-1,i)*x(i);
	end
end