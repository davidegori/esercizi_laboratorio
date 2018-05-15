function x=jacobi(A,b,k)
%rislove sistemi con metodo di Jacobi
	n=size(A);
	n=n(1);
	%u=randn(3)(1,:);
	%u=[3.338379432298626,-1.590892516099053,4.580399083988357];
	%u=ones(1,n);
	u=b;
	for f=1:k
		for h=1:n
			x(h)=(b(h)-A(h,:)*u(:)+A(h,h)*u(h))/(A(h,h));
		end
		norm(A*x(:)-b)
		u=x;
	end
	x=u;
end