%format long
graphics_toolkit('gnuplot')
slot=[0, 6];
y0=1;
err=zeros(3, 2);
errabs=zeros(4, 2);
for j=1:2
	if j==1, a=1; b=0; else a=100; b=3; end
	fun4 = @(x, y) -a*y+2*x;
	for i=1:3
		h=10^(-i);
		[x, u]=eulero(fun4,slot,y0,h);
		sol_esatta=(1+2/(a^2))*(e.^(-a.*x)).+2/a*x -2/(a^2);
		subplot(3, 3, b+i);
		plot(x, u, 'r');
		hold on
		subplot(3, 3, b+i);
		plot(x, sol_esatta, 'b');
		legend(sprintf("caso %d, %d",10^(-i), a))
		drawnow;
		err(i, j)=max(abs(u-sol_esatta));
		errabs(i, j)=max(abs((u-sol_esatta)./sol_esatta));
	end
	%confronto con ode45 (errori ultima riga matrice)
	[xc,yc]=ode45(@(x,y) (-a*y+2*x),slot,y0,"RelTol",0.0000001);
	sol_esatta=(1+2/(a^2))*(e.^(-a.*xc)).+2/a*xc -2/(a^2);
	subplot(3, 3, 6+j);
	plot(xc, yc, 'r');
	hold on
	subplot(3, 3, 6+j);
	plot(xc, sol_esatta, 'b');
	legend(sprintf("caso ode45, %d", a))
	drawnow;
	err(4, j)=max(abs(yc-sol_esatta));
	errabs(4, j)=max(abs((yc-sol_esatta)./sol_esatta));
	plot(1:length(xc), xc);
end
err
errabs
%confronto con ode45

%notiamo che il metodo di Eulero è molto meno
%preciso di RK4