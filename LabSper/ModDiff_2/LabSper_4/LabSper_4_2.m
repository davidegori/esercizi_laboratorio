y0=[300, 150];
tmax=2.5;
h=0.0001;

%per stampare il secondo caso basta modificare:
%y0=[15, 22];
%tmax=3.8;
%h=0.0001;

[x,y] = RK4(@fun1,[0, tmax],y0, h);
length(x)
length(y(:,1))
subplot(2, 2, 1:2)
plot(y(:,2), y(:,1))
legend("y1 in funzione di y2")
title("caso y0=[300, 150]")
subplot(2, 2, 3)
plot(x,y(:, 1))
legend("y1")
subplot(2, 2, 4)
plot(x,y(:, 2))
legend("y2")
