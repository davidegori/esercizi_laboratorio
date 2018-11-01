slot=[0, 5];
y0=1;
err=zeros(10, 2);
for i=1:10
	h=1/(10*i);
	[x, u]=eulero(@fun4,slot,y0,h);
	[x, v]=RK4(@fun4,slot,y0,h);
	sol_esatta=e.^(-x) .* cos(5.*x);
	err(i, 1)=max(abs(u-sol_esatta));
	err(i, 2)=max(abs(v'-sol_esatta));
end
err
hold on
plot(1:10, err(:,1), 'r');
plot(1:10, err(:,2));
legend("Eulero","RK4")
