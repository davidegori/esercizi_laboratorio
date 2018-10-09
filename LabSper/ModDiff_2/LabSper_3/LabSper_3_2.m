%Sapendo che la leggi per il decadimento è esponenziale, 
%abbiamo che y=c*e^(at) abbiamo che 0.5=y(t+50)/y(t)e^(50a).
%dunque a=-ln(2)/50.
%se dopo 50 anni la quantità è dimezzata, dopo 100 è 1/4
%di grammo.
%il modello ottenuto risolve la seguente equazione
%differenziale: y'=-ln(2)/50 y, con y(0)=1
a=-log(2)/50;
f=@(x,y) a*y;
y0=1;
[x,y] = RK4(f,[0, 2000],y0, 0.1);

%si ferma quando e^(at)=1/10, cioè t=-ln(10)/a=166.10
k=-log(10)/a

plot(x(1:50*10),y(1:50*10))
