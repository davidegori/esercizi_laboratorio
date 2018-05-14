function es_a3(f, n)
	#esempio di funzione: f=@(x,y)sin(2*pi*(x+y))*cos(2*pi*(x-y))
	A=zeros(n, n, 3);
	for i= 1:n
		for j= 1:n
			a=abs(f(i/n, j/n));
			if a<0.25
				A(i, j, 1)=4*a;
			else
				A(i, j, 2)=4*(a-0.25);
			end
		end
	end
	clf
	image(A)