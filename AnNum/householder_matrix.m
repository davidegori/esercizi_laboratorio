function P = householder_matrix(v)
%householderizza vettori (?)
	n=size(v)(1);
	if v(1)<0
		v(1)-= norm(v);
	else
		v(1)+= norm(v);
	end
	P=eye(n) - 2/((v')*v)*v*(v');
end