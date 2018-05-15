function plottimes(n);
	tempi=zeros(n,1); %prepara un vettore vuoto con i tempi
	for i=1:n
		A=vander(1:i); %la matrice viene generata prima di ‘‘tic’’:perche’?
		tic;
		d=mydet(A);
		tempi(i)=toc;
	end
	plot(1:n,tempi);
end