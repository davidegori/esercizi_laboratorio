function [x,y]=solve(a,b,c)
% risolve eq secondo grado
if (b*a>0)
  y=(-b-sqrt(b*b-4*a*c))/(2*a);
  x=c/(a*y);
elseif (b*a<0)
  x=(-b+sqrt(b*b-4*a*c))/(2*a);
  y=c/(a*x);
elseif (b=0) && (a!=0)
  x=sqrt(-c/a);
  y=-x;
elseif (a=0) && (b!=0)
  x=-c/b;
  y=-c/b;
  'una sola radice!'
else
  'nessuna soluzione'
endif
end
