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
	if(i<33)
		dom(31,i)=a;
		dom(32,i)=a;
	end
	if(i<33 && i>8)
		dom(9,i)=a;
		dom(10,i)=a;
	end
	if(i>8 && i<23)    
		dom(i,9)=a;
		dom(i,10)=a;
	end
	if(i>8 && i<31)    
		dom(i,31)=a;
		dom(i,32)=a;
	end
end