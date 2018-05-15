function [Q,R] = my_qr(A)
%fattorizzazione QR
	if size(A)==1
		Q=eye(1);
		R=A;
	else
		P = householder_matrix(A(1:end,1));
		R=P*A;
		[Qo, Ro]=my_qr(R(2:end,2:end)Q);
		Qo= [1 , zeros(1,size(Qo)(1)); zeros(size(Qo)(1),1), Qo];
		Q=(P')*Qo;
		R= [R(1,1), R(1,2:end); R(2:end,1), Ro];
	end
end