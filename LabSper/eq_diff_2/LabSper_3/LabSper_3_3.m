%l'equazione logistica è del tipo y'=y(a-by) dove:
%Capacità portante dell'ambiente K=a/b=0.01 
%Potenziale biologico: a=0.2
%y0=2
%quindi b=20, a=0.2

f=@(x,y) y*(0.2-20*y);
y0=2;
[x,y] = ode45(f,[0 0.5],y0);
plot(x,y)
hold on
k=0.2*ones(length(x), 1);
plot(x,k)