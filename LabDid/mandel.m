function [x,y,W]=mandel(a,b,c,d,numpoints,maxiter,maxval)

x=linspace(a,b,numpoints);
y=linspace(c,d,numpoints);
nx=length(x);
ny=length(y);
 for i=1:nx
  for j=1:ny
	z=x(i)+y(j)*1i;
	q=z;
	for k=1:maxiter
	q=q*q+z;
	if (abs(q)>maxval) 
		k=maxiter;
	end
	end
	W(j,i)=exp(-abs(q));
  end
 end
end