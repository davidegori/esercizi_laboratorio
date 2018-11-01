a=log(2);
f=@(x,y) a*y;
y0=1000;
[x,y] = eulero(f,[0, 6],y0, 0.01);
plot(x,y)
