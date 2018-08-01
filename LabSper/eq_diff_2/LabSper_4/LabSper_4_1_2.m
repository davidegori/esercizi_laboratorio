%l'equazione è (fun):
%yp(1) = y(1)*0.21827*(1-y(1)/13-y(2)/3.71429)
%yp(2) = y(2)*0.06069*(1-y(2)/5.8+y(1)/13.2118)


B=[0.5, 0.1, 10];
for i=1:3
	[x,y] = ode45(@fun,[0 300],[B(i), 0.5]);
	subplot(2, 2, i)
	plot(x,y)
	title(sprintf("caso y0=%d",B(i)))
	legend("N1", "N2")
	drawnow
end
%In tutti e tre i casi si verifica che dopo un transiente,
%circa della stessa durata per le tre poplazioni,
%la specie N2 si stabilizza a 5.8 e quella N2 si estingue
