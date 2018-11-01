f=@(x,y) (1/2+cos(2*pi*x))*y*(1-0.01*y);
g=@(x,y) 0.5*y*(1-0.01*y);
B=[1, 10, 50, 200];
for i=1:4
	y0=B(i);
	[x,y] = ode45(f,[0 20],y0);
	[z,k] = ode45(g,[0 20],y0);
	subplot(2, 2, i)
	plot(z,k, 'r')
	hold on
	subplot(2, 2, i)
	plot(x,y, 'b')
	title(sprintf("caso y0=%d",B(i)))
	drawnow
end
