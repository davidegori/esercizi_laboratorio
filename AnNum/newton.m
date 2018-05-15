function x=newton(p,b)
%metodo di Newton che termina quando |p(x)|<e-12
	k=1;
	x=b;
	while(k>(1E-12))
		x=x-(horner(p,x))/(horner(derivata(p), x));
		k=abs(horner(p,x));
	end
end