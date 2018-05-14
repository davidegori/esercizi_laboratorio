n = 40;
m = 20/n^2;
k = 4.0e5;
a = 2.e-2;
p = zeros(n,n);
v = p;
q = 34;
l = 25;
for i=-4:4
	for j=-4:4
		v(q+i,l+j) = 2*1.e4*exp(-0.07*(i^2+j^2));
	end
end
secs = 2;
rate = 16000;
dom=ones(n,n);
a=0;
for i=1:40
	if(i~=13 && i~=14 && i~=15 && i~=16 && i~=25 && i~=26 && i~=27 && i~=28)
		dom(12,i)=a;
		dom(13,i)=a;
	end
	if(i>10 && i<31)    
		dom(27,i)=a;
		dom(28,i)=a;
	end
end