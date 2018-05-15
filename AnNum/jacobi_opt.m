function x=jacobi_opt(A,b)
%rislove sistemi con metodo di Jacobi
	u=b;
	n=size(A);
	n=n(1);
	k=1;
	for f=1:k
		for h=1:n
			x(h)=(b(h)-A(h,:)*u(:)+A(h,h)*u(h))/(A(h,h));
		end
		y=norm(A*x(:)-b)
		if y > e-8
			k=+1;
		else
			'fine!'
		end
		u=x;
	end
	x=u;
end