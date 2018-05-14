function [x,u] = RK4(odefun,tspan,y0,h)
dim=length(y0);
x=tspan(1):h:tspan(2);
n=length(x);
u=zeros(n, dim);
u(1,:)=y0;
for i=2:n
	F1=odefun(x(i-1), u(i-i));
	F2=odefun(x(i-1)+h/2, u(i-1)+h*F1/2);
	F3=odefun(x(i-1)+h/2, u(i-1)+h*F2/2);
	F4=odefun(x(i-1)+h, u(i-1)+h*F3);
	u(i)=u(i-1)+h/6 *(F1+2*F2+2*F3+F4);
end
end
