function x = sys_solve (A,b);
%risolve sistemi con fattorizzazione LU
	[L,U]=my_lu(A);
	x=inf_solve(L,b);
	x=sup_solve(U,x);
end