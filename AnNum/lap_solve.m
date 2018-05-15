function x=lap_solve(n,b)
	[L,U]=lu(laplacian(n));
	y=inf_solve(L,b);
	x=sup_solve(U,y);
end