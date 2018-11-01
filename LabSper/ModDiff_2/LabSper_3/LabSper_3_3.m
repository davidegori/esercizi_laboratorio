f=@(x,y) y*(0.2-20*y);
y0=2;
[x,y] = ode45(f,[0 0.5],y0);
plot(x,y)
hold on
k=0.2*ones(length(x), 1);
plot(x,k)
