i=input("scegli uno dei 4 casi:\n1) mu=0.1\n2) mu=1\n3) mu=10\n4) mu=100\n");
switch i
	case 1
		a=0.1;
		n="mu = 0.1";
	case 2
		a=1;
		n="mu = 1";
	case 3
		a=10;
		n="mu = 10";
	case 4
		a=100;
		n="mu = 100";
	otherwise
		"non ho capito il comando"
		break
end
opz= odeset("AbsTol", 1e-20);
f=@(x, y)[y(2), a*(1-y(1)^2)*y(2)-y(1)];
y0=[1, 1];
[x,y] = eulerop(f,[0, 100],y0, 0.001);
[a,b] = ode45(f,[0, 100],y0, opz);
hold on
plot(x,y(:,1))
plot(a,b(:,1))
legend("eulero","ode45")
title(n)
file_name = sprintf('6_3_%i.jpeg', i);
print('-djpeg', file_name)
clf
hold on
plot(a(1:end),'+')
legend("ode45")
title(n)
file_name = sprintf('6_3_%i_a.jpeg', i);
print('-djpeg', file_name)