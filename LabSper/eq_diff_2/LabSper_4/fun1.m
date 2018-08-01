function yp = fun1(x,y)
yp = zeros(1,2);
yp(1) = y(1)*(2-0.001*y(2));
yp(2)= y(2)*(1-0.001*y(1));
end