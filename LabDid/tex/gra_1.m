n=1000
a=b=zeros(1,n)
for t=1:n
	a(t)=sin(2*pi*(t-1)/n);
	b(t)=cos(5*pi*(t-1)/n);
end
plot(a, b, "b")