function b=arnold_cat(a,k, X)
	s=size(a);
	b=a;
	for h=1:k
		for i=0:s(1)-1
			for j=0:s(2)-1
				ip = mod(X(1,1)*i+X(1,2)*j,s(1));
				jp = mod(X(2,1)*i+X(2,2)*j,s(2));
				b(ip+1,jp+1,:) = a(i+1,j+1,:);
			end
		end
	a = b;
end