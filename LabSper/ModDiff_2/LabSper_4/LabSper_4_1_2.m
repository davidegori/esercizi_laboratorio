B=[0.5, 0.1, 10];
for i=1:3
	[x,y] = ode45(@fun,[0 300],[B(i), 0.5]);
	subplot(2, 2, i)
	plot(x,y)
	title(sprintf("caso y0=%d",B(i)))
	legend("N1", "N2")
	drawnow
end
