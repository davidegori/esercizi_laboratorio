function x=gaussseidel(A,b,k)
%rislove sistemi con metodo di Jacobi
	n=size(A);
	n=n(1);
	u=ones(1,n);
	for f=1:k
		for h=1:n
		for d=1:h-1
			G+=A(h,d)*x(d);
		end
		for p=i+1:n
			H+=A(h,p)*u(p);
		end
			x(h)=(b(h)-H-G)/(A(h,h));
		end
		norm(A*x(:)-b)
		u=x;
	end
	x=u;
end