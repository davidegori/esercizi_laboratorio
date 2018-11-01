fAL = @(x,y,sigma,r,b) [sigma*(y(2)-y(1));...
r*y(1)-y(2)-y(1)*y(3); y(1)*y(2)-b*y(3)];

sigma = 10; r = 28; b = 8/3;
y0=[10, 0, 20];
opz=odeset ("RelTol", 1e-6);
[x,y] = ode45(fAL,[0, 20],y0,opz,sigma,r,b);
y0=[11, 0, 20];
[a,b] = ode45(fAL,[0, 20],y0,opz,sigma,r,b);
hold on
plot(x,y(:,1), "b")
plot(a,b(:,1), "r")
legend("caso a)","caso b)")
title("(x, y1)")
print('-djpeg','6_2_1.jpeg');
clf
hold on
plot(x,y(:,2), "b")
plot(a,b(:,2), "r")
legend("caso a)","caso b)")
title("(x, y2)")
print('-djpeg','6_2_2.jpeg');
clf
hold on
plot(x,y(:,3), "b")
plot(a,b(:,3), "r")
legend("caso a)","caso b)")
title("(x, y3)")
print('-djpeg','6_2_3.jpeg');
clf
plot3(y(:,1),y(:,2),y(:,3), "b")
hold on
plot3(b(:,1),b(:,2),b(:,3), "r")
legend("caso a)","caso b)")
title("(y1, y2, y3)")
print('-djpeg','6_2_4.jpeg');
clf