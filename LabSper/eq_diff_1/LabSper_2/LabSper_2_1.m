slot=[0, 10];
y0=1;
B=[0.5, 1, 2, 2.5]
for i=1:4
	h=B(i);
	[x, u]=eulero(@fun2,slot,y0,h);
	sol_esatta=e.^(-x);
	subplot(2, 2, i);
	plot(x, u, 'r');
	hold on
	subplot(2, 2, i);
	plot(x, sol_esatta, 'b');
	legend(sprintf("caso %d",B(i)))
	drawnow;
end
%Commento: Se uso un passo troppo grande ottengo che la 
%funzione esce da [0, 1] e si ha un comportamento a
%"zig-zag" dovuto al fatto che la derivata cambia segno
%ad ogni passo