%l'equazione è (fun3):
%I(t) = r*I(t)*(N-I(t))
%dove r è il tasso di contagio (>=0)
%Infatti questo  è il modello SIR con beta=0,
% notando che I+S=N si ha l'equazione.
%Per far si che il modello abbia senso fisico occorre che:
%I(0) sia intero e appartenente all'intervallo [0, N]


%Punto b: N=1000 r=0.0001, I(0)=1 
%NOTA: essendo l'equazione autonoma supponiamo t0=0

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

%graficamente si vede che l'80% viene superato circa
%all'80-esimo giorno di diffusione della malattia