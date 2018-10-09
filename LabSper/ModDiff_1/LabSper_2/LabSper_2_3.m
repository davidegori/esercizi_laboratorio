slot=[1, 2];
y0=[1, 0];
h=0.01;
[x, u]=RK4(@fun3,slot,y0,h);
plot(x, u)
legend("y(x)","y'(x)")