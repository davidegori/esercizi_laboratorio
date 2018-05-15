function A=laplacian(n)
	%crea matrice di laplace
	A=2*eye(n)+diag(-ones(n-1,1),1)+diag(-ones(n-1,1),-1);
end