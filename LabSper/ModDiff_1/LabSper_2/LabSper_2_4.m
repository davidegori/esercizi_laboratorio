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

%notiamo che il metodo di Eulero è molto meno
%preciso di RK4
%        eulero        RK4
%i=1   1.5386e-01   2.3929e-05
%i=2   7.7457e-02   1.4690e-06
%i=3   5.1750e-02   2.8876e-07
%i=4   3.8870e-02   9.1275e-08
%i=5   3.1132e-02   3.7356e-08
%i=6   2.5960e-02   1.8002e-08
%i=7   2.2259e-02   9.7114e-09
%i=8   1.9481e-02   5.6899e-09
%i=9   1.7319e-02   3.5508e-09
%i=10  1.5589e-02   2.3294e-09
