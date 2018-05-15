function ggsecond(A)
% disegna i cerchi di Gerschgorin di A e mostra come variano gli autovalori quando gli elementi fuori dalla diagonale di A vengono ridotti pian piano ?no a diventare zero, come nella dimostrazione del secondo teorema di Gerschgorin.
%    genera 100 matrici a intervalli uguali lungo il �segmento� che unisce
%    A alla sua diagonale, e plotta gli autovalori
	close all
	s=size(A);
	n=s(1);
	D=zeros(n);
	R=zeros(n);
	f=20 %parametro di continuità
	for i=1:n
		D(i,i)=A(i,i); 
	end
	for i=1:n
		for j=1:n
			if(j!=i) R(i,j)=A(i,j);
		end
	end
	t = linspace(0,1,f);
	axis('equal')
	hold on
	gg(A)
	for  i=1:f
		pause(0.01);
		autovalori=eig(R+t(i)*D);
		plot(real(autovalori),imag(autovalori), '*');
	end
	%for i=1:f
	%	C=R+t(i)*D;
	%	for k=1:n
	%		center=C(k,k);
	%		radius=0;
	%		for j=1:n
	%			if(j!=k)
	%				radius=radius+abs(C(k,j));
	%			end
	%		end
	%	circle(center, radius);
	%	end
	%end
end