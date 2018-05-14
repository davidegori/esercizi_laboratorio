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
	if(i~=18 && i~=19 && i~=20 && i~=21)
		dom(20,i)=a;
		dom(21,i)=a;
	end
	if(i>14 && i<26)    
		dom(26,i)=a;
		dom(27,i)=a;
	end
end