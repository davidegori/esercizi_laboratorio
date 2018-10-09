slot=[1, 2];
y0=1;
h=(slot(2)-slot(1))/10;
[x, u]=eulero(@fun,slot,y0,h);
x
sol_esatta=1./(x.^2.*(log(x)+1));
plot(x, u, 'r')
hold on
plot(x, sol_esatta, 'b')
drawnow
