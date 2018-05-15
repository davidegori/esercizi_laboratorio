function a=mydet(A)
%restituisce il determinante di una matrice
	n=size(A);
	n=n(1);
	a=0;
	for k=1:n
		a=a+(-1)^(k+1) *mydet(minor(A, 1, k));
	end
end

