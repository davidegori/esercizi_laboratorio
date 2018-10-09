%l'equazione è:
i=input("scegli uno dei 4 casi:\n1) oscillatore libero non smorzato\n2)oscillatore libero sottosmorzato\n3)oscillatore libero sovrasmorzato\n4)oscillatore forzato smorzato\n");
switch i
	case 1
		a=0/1;  %k/m
		b=9.8/10;  %g/h
		f=0;
		y0 = [1,0];
	case 2
		a=0.5/1;  %k/m
		b=9.8/10;  %g/h
		f=0;
		y0 = [1,0];
	case 3
		a=10/1;  %k/m
		b=9.8/10;  %g/h
		f=0;
		y0 = [1,0];
	case 4
		a=0.75/2;  %k/m
		b=9.8/10;  %g/h
		f=25;
		y0 = [2,0];
	otherwise
		"non ho capito il comando"
		break
end
f = @(x,y) [y(2); -a*y(2)-b*sin(y(1))+f];
[x,y] = ode45(f,[0, 10],y0);
hold on
plot(x,y(:,1))
plot(x,y(:,2))
legend("posizione", "velocita'")
