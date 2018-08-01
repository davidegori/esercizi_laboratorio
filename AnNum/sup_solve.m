function x=sup_solve(U,b)
	s=size(U);
	n=s(1);
	x=zeros(n,1);
	for i=n:-1:1
		p=b(i); % accumulatore
		for j=n:-1:i+1
			p=p-U(i,j)*x(j);
		end
	x(i)=p/U(i,i);
	end
end