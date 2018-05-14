n = 40;
m = 20/n^2;
k = 4.0e5;
a = 2.e-2;
p = zeros(n,n);
v = p;
q = 37;
l = 6;
for i=-3:3
	for j=-3:3
		v(q+i,l+j) = 2*1.e4*exp(-0.07*(i^2+j^2));
	end
end
secs = 2;
rate = 16000;
dom=ones(n,n);
a=0;
for i=1:40
	for j=1:40
		if(i+j>64)
			dom(i,j)=a;
		end
	end
end


for i=1:40
	if((i<33 && i>16) || i<10)
		dom(i,25)=a;
		dom(i,26)=a;
	end
	if(i<27)    
		dom(32,i)=a;
		dom(31,i)=a;
	end
end