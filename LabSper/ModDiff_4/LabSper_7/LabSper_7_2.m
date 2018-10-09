% derivando [X(teta), Y(teta)]=[a*ln(b)Y, a*ln(b)X]

a=20;
b=5;
f = @(t,z) [-z(2)+log(b)*z(1);log(b)*z(2)+z(1)];
y0=[20, 0];  %[a,0]
opz=odeset ("MaxStep", 1);
[t,z] = ode45(f,[0, 10],y0,opz);
h=0:0.1:10;
l=b*ones(1, length(h));
g1=a.*power(l, h).*cos(h);
g2=a.*power(l, h).*sin(h);
hold on
plot(g1,g2)
plot(z(:,1),z(:,2))
legend("parametrico", "differenziale")
print('-djpeg','7_2.jpeg')

