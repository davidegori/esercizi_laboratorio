function perturb(A,e)
	%perturba la matrice e plotta gli autovalori
	sz=size(A);
	n=sz(1);
	f=100
	for g=1:f
		pause(0.01)
		C=A+e*(randn(n)+i*randn(n));
		B=eig(C);
		hold on
		plot(real(B),imag(B), '*')
	end
end