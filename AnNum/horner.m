function y=horner(p,x)
%metodo di horner per il calcolo dei polinomi	
	n=size(p);
	n=n(2);
	y=p(1);
	for k=2:n
		y=y*x+p(k);
	end
end