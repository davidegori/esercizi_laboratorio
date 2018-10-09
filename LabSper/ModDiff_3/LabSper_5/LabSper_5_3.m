%l'equazione è:
k=9.8/2;
f = @(x,y) [y(2); -k*y(1)];
y0 = [pi/6,0];
[x,y] = ode45(f,[0, 10],y0);
hold on
plot(x,y(:,1))
plot(x,y(:,2))
legend("posizione", "velocita'")

%NOTE: Si osserva che la soluzione è molto simile
%quindi y(1) è una buona approssimazione per y(2).
%Si nota comunque che nel caso non approssimato si ha un
%periodo di oscillazione leggermente più breve.