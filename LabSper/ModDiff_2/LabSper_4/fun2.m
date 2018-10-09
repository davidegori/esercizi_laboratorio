function yp = fun2(x,y)
yp = zeros(1,2);
yp(1) = y(1)*(0.405-0.81*y(2));
yp(2)= y(2)*(-1.5+0.125*y(1));
end