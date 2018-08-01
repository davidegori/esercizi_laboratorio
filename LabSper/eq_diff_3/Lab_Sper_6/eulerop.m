function [x,u] = eulerop(odefun,slot,y0,h)
x=slot(1):h:slot(2);
n=length(x);
dim=length(y0);
u=zeros(n, dim);
u(1, :)=y0;
for i=2:n
	u(i,:)=u(i-1,:)+h*odefun(x(i-1), u(i-1,:));
end
end
%eulerop=eulero implementato per più dimensioni
