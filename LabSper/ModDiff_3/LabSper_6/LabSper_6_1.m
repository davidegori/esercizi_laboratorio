%Con facili conti si ottiene che l'equazione differenziale
%e' la seguente:
%[z1pp, z2pp, z3pp]=
%[z1*(g*z3-(z1p^2+z2p^2+z3p^2))/(z1^2+z2^2+z3^2),
%z2*(g*z3-(z1p^2+z2p^2+z3p^2))/(z1^2+z2^2+z3^2),
%z3(g*z3-(z1p^2+z2p^2+z3p^2))/(z1^2+z2^2+z3^2)-g]
%Che, trasformata come dovuto, diventa:
g=9.8;
f=@(x, y)[y(4), y(5), y(6), y(1)*(g*y(3)-(y(4)^2+y(5)^2+y(6)^2))/(y(1)^2+y(2)^2+y(3)^2), y(2)*(g*y(3)-(y(4)^2+y(5)^2+y(6)^2))/(y(1)^2+y(2)^2+y(3)^2), y(3)*(g*y(3)-(y(4)^2+y(5)^2+y(6)^2))/(y(1)^2+y(2)^2+y(3)^2)-g];
y0=[0, 1, 0, 0.8, 0, 1.2];
i=input("scegli uno dei 7 casi:\n1) eulerop h=0.0025\n2) eulerop h=0.00025\n3) RK4 h=0.005\n4) RK4 h=0.0005\n5) ode23\n6) ode45 RelTol=0.001\n7) ode45 RelTol=0.000001\n");
switch i
	case 1
		h=0.0025;
		[a,b] = eulerop(f,[0, 10],y0, h);
		n="eulerop h=0.0025";
	case 2
		h=0.00025;
		[a,b] = eulerop(f,[0, 10],y0, h);
		n="eulerop h=0.00025";
	case 3
		h=0.005;
		[a,b] = RK4(f,[0, 10],y0, h);
		n="RK4 h=0.005";
	case 4
		h=0.0005;
		[a,b] = RK4(f,[0, 10],y0, h);
		n="RK4 h=0.0005";
	case 5
		[a,b] = ode23(f,[0, 10],y0);
		n="ode23";
	case 6
		opz=odeset ("RelTol", 1e-3);
		[a,b]=ode45(f,[0, 10],y0, opz);
		n="ode45 RelTol=0.001";
	case 7
		opz=odeset ("RelTol", 1e-6);
		[a,b]=ode45(f,[0, 10],y0, opz);
		n="ode45 RelTol=0.000001";
	otherwise
		"non ho capito il comando"
		break
end
m=zeros(length(a), 1);
m=b(:,1).^2+b(:,2).^2+b(:,3).^2-ones(length(a),1);
r=max(abs(m))
plot3(b(:,1), b(:,2), b(:,3))
title(n)
