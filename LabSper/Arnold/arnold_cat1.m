function b = arnold_cat1(a,k, M)
% versione vettoriale della trasformazione di Arnold
	s = size(a); m = s(1); b = a;
	% calcola la matrice P = M^k mod m
	P=eye(2);
	for j=1:k
		P = mod(M*P, m);
	end
	% crea una matrice S le cui colonne sono tutte le coppie
	% di indici (i,j) con l’ordinamento "per colonne" e con
	% origine degli indici in 0
	S = [kron(ones(1,m),[0:m-1]);kron([0:m-1],ones(1,m))];
	% trasforma simultaneamente le colonne con la matrice P
	T = mod(P*S,m);
	vt = T(2,:)*m + T(1,:) + 1;
	vt = reshape(vt,[m,m]);
	col = 1;
	if length(s) == 3 && s(3)==3
		col = 3;
	end
	for j=1:col
		F = a(:,:,j);
		F(vt) = F;
		b(:,:,j) = F;
	end
end