%Essendo la velocità di accrescimento costante
% (per la terza ipotesi) allora abbiamo che y'/y=a costante,
% sapendo che la soluzione è del tipo c*e^(at) sappiamo che
%, visto che in 1 ora si ha un raddoppiamento della
%popolazione, e^a=2, da cui a=ln(2).
%siccome f(0)=1000 allora c=1000. Risolviamo ora utilizzando
%un metodo numerico
a=log(2);
f=@(x,y) a*y;
y0=1000;
[x,y] = eulero(f,[0, 6],y0, 0.01);
plot(x,y)