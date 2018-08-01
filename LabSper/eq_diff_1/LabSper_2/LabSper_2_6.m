%format long
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
		err(i, j)=max(abs(u-sol_esatta));
		errabs(i, j)=max(abs((u-sol_esatta)./sol_esatta));
	end
	%confronto con ode45 (errori ultima riga matrice)
	[xc,yc]=ode45(@(x,y) (-a*y+2*x),slot,y0,"RelTol",0.0000001);
	sol_esatta=(1+2/(a^2))*(e.^(-a.*xc)).+2/a*xc -2/(a^2);
	err(4, j)=max(abs(yc-sol_esatta));
	errabs(4, j)=max(abs((yc-sol_esatta)./sol_esatta));
	hold on
	plot(1:length(xc), xc);
	length(xc)
	xc
	legend("a=1","a=100");
end
err
errabs
%confronto con ode45

%notiamo che il metodo di Eulero è molto meno
%preciso di ode45
% i valori sono i seguenti
%errore assoluto:
%		     a=1	    a=100
%h=E-1   5.7603e-02   1.7974e+57
%h=E-2   5.5413e-03   3.6795e-01
%h=E-3   5.5205e-04   1.9205e-02
%ode45   1.8360e-05   2.5751e-04

%errore relativo
%		     a=1	    a=100
%h=E-1   6.1663e-02   1.5003e+58
%h=E-2   5.9073e-03   1.0000e+00
%h=E-3   5.8806e-04   2.1113e-01
%ode45   7.5516e-06   1.8043e-03

%Passo ode45:
%Notiamo che nel caso a=100, escluso il momento iniziale
%, si ha che il passo è costante. Nel caso a=1
%vengono eseguiti meno passo (15) più lunghi
