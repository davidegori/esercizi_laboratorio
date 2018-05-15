function a=mydet3(A)
%calcola il determinante con QR e LR
	n=size(A);
	n=n(1);
	a=1;
	[L,U]=my_lu(A);
	for k=1:n
		a=a*(U(k,k));
	end
end