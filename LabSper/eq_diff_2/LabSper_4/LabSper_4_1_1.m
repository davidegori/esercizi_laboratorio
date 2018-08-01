%l'equazione è (fun):
%yp(1) = y(1)*0.21827*(1-y(1)/13-y(2)/3.71429)
%yp(2) = y(2)*0.06069*(1-y(2)/5.8+y(1)/13.2118)

[x,y] = ode45(@fun,[0 300],[0.5, 0.3]);
hold on
k=5.8*ones(length(x), 1);
plot(x,k)
hold on
plot(x,y)
legend("k_2", "N1", "N2")

