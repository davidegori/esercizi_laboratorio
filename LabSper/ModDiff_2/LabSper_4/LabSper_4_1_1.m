[x,y] = ode45(@fun,[0 300],[0.5, 0.3]);
hold on
k=5.8*ones(length(x), 1);
plot(x,k)
hold on
plot(x,y)
legend("k_2", "N1", "N2")

