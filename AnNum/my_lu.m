function [L,U]= my_lu(A);
%clacola fattorizzazione LU
	s=size(A);
	n=s(1);
	L=eye(n);
	for f=1:n
		if A(f,f)==0
			error('pivot nullo')
		end
		for k=f+1:n
				L(k,f)=A(k,f)/A(f,f);
			for m=f:n
				A(k, m)=A(k,m)-A(k,f)/A(f,f)*A(f,m);
			end
		end
	end
	U=A;
end