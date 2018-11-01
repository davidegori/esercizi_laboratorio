[x,y] = ode45(@fun3,[0 200],1);
z=1000*ones(length(x))-y;
k=800*ones(length(x));

hold on
plot(x,y, "r")
hold on
plot(x,z, "b")
hold on
plot(x,k, "g")

legend("Infetti", "Sani")
