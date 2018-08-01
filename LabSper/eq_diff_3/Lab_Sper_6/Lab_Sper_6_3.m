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
f=@(x, y)[y(2), a*(1-y(1)^2)*y(2)-y(1)];
y0=[1, 1];
[x,y] = ode15s(f,[0, 100],y0);
[a,b] = ode45(f,[0, 10],y0);
hold on
plot(x,y)
plot(a,b)
legend("ode15s","ode45")
title(n)

%NOTA: quando si usa eulero i nodi sono equistanziati!