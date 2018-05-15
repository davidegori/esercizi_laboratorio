function disegnamembrana()
%disegna la membrana cercata
	m=n=40;
	bordo=zeros(m,n);
	carico=ones(m,n);
	z=membrana(bordo, carico, 50);
	mesh(1:n,1:m,z)
end