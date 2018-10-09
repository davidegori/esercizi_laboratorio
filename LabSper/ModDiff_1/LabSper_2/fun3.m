function [a, b]=fun3(x, y)
b=y(1);
a=-(4*x+1)/(2*x+2)*y(1)+(2*x-1)/(4*x*x) *(3*y(2)^3+y(2))/(1+y(2)^2);
end
%funzione f(t, x1, x2)