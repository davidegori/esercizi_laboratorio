function plotrope(n, k, C, in, fin)
	b=-C/k;
	b(1)=b(1)+in;
	b(n)=b(n)+fin;
	Y=lap_solve(n, b);
	for d=1:n
		hold on
		plot(d, Y(d))
	end
	plot(0, in)
	plot(n+1, fin)
end