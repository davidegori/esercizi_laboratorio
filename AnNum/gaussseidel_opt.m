function x=gaussseidel_opt(A,b)
%rislove sistemi con metodo di Jacobi
	u=b;
	n=size(A);
	n=n(1);
	k=1;
	for f=1:min(100, k)
		for h=1:n
		for d=1:h-1
			G+=A(h,d)*x(d);
		end
		for p=i+1:n
			H+=A(h,p)*u(p);
		end
			x(h)=(b(h)-H-G)/(A(h,h));
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