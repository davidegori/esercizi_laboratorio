function x = sys_solve_qr(A,b);
%risolve sistemi con fattorizzazione QR
	[Q,R]=my_qr(A);
	x=sup_solve(R,(Q')*b);
end