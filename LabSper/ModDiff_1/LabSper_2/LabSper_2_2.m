slot=[0, 10];
y0=1;
B=[1, 2, 2.5, 3];
for i=1:4
	h=B(i);
	[x, u]=RK4(@fun2,slot,y0,h);
	sol_esatta=e.^(-x);
	subplot(2, 2, i);
	plot(x, u, 'r');
	hold on
	subplot(2, 2, i);
	plot(x, sol_esatta, 'b');
	legend(sprintf("caso %d",B(i)))
	drawnow;
end
