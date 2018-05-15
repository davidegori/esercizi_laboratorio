function dp=derivata(p)
%fa la derivata dei coefficienti
	n=size(p);
	n=n(2);
	dp=zeros(1, n-1);
	for k=1:n-1
		dp(k)=(n-k)*p(k);
	end
end