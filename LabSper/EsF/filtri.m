function [f1, f2] = filtri(m, n)
	% costruisco il filtro f1
	k = floor((m-1)/2); k1 = round(k/2);
	f = ones(1,k); f(k1:k) = 0;
	if(mod(m,2) == 0) % caso m pari: [0 1 2 3 4 3 2 1]
		f1 = [1,f,0,f(k:-1:1)];
	else % caso m dispari: [0 1 2 3 3 2 1]
		f1 = [1,f,f(k:-1:1)];
	end
	% costruisco il filtro f2
	k = floor((n-1)/2); k1=round(k/2);
	f = ones(1,k); f(k1:k) = 0;
	if(mod(n,2) == 0) % caso n pari: [0 1 2 3 4 3 2 1]
		f2 = [1,f,0,f(k:-1:1)];
	else % caso n dispari: [0 1 2 3 3 2 1]
		f2 = [1,f,f(k:-1:1)];
	end
end