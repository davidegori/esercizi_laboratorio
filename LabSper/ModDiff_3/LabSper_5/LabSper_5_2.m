k=9.8/2;
f = @(x,y) [y(2); -k*sin(y(1))];
y0 = [pi/6,0];
[x,y] = ode45(f,[0, 10],y0);
hold on
plot(x,y(:,1))
plot(x,y(:,2))
legend("posizione", "velocita'")
