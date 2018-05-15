function z=membrana(bordo, carico, r)
%calcola le altezze dei punti centrali in caso di membrana fissa ai bordi
	k=1;
	n=size(bordo);
	n=n(1);
	z=zeros(n,n);
	for d=1:r
		a=[z(2:end,:); zeros(1,n)];
		b=[zeros(1,n); z(1:end-1,:)];
		c=[zeros(n,1), z(:,1:end-1)];
		d=[z(:,2:end), zeros(n,1)];
		z=-1/4 *(k*carico-(a+b+c+d));
		z=[ zeros(1,n);zeros(n-2,1),z(2:end-1,2:end-1),zeros(n-2,1); zeros(1,n)]+bordo;
	end
end

