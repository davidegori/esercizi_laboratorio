%l'equazione è (fun):
%if x<xp
%	yp(1) = -g-h1*y(1);
%	yp(2) = y(1);
%else
%	yp(1) = -g-h2*y(1);
%	yp(2) = y(1);
%end
%dove:
%h1=16.5/90
%h2=180/90
%g=9.8
%xp=15

[x,y] = RK4(@fun,[0, 150],[0, 1200], 0.01);

subplot(2, 1, 1)
plot(x,y(:,1))
legend("Velocita' in valore assoluto")

subplot(2, 1, 2)
plot(x,y(:,2), "b")
hold on
plot(x,zeros(1, length(x)), "r")
legend("Altitudine")

y(14738, 1)
y(14738, 2)
x(14738)


%NOTE:
%aiutandoci con il grafico e con un po' di tentativi
%a mano si scopre che:
%- l'atterraggio avviene al tempo x(14738)=147.37
%- la velocità all'atterraggio è y(14738, 1)=-4.9


