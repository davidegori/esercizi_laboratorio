[x,y] = ode45(@fun2,[0 10],[7.7, 0.5]);
[z,k] = ode45(@fun2,[0 25],[7.7, 0.5]);

subplot(2, 2, 1:2)
plot(y(:,1), y(:,2))
legend("L in funzione di G")
title("dal 1975 al 1985")
subplot(2, 2, 3)
plot(z,k(:, 1))
legend("G")
title("dal 1975 al 2000")
subplot(2, 2, 4)
plot(z,k(:, 2))
legend("L")
title("dal 1975 al 2000")
