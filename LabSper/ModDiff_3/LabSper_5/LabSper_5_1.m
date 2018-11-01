[x,y] = RK4(@fun,[0, 150],[0, 1200], 0.01);

subplot(2, 1, 1)
plot(x,y(:,1))
legend("Velocita' in valore assoluto")

subplot(2, 1, 2)
plot(x,y(:,2), "b")
hold on
plot(x,zeros(1, length(x)), "r")
legend("Altitudine")

y(14738, 1)
y(14738, 2)
x(14738)


