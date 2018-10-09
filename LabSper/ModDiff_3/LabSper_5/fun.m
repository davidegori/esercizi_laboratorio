function yp = fun(x,y)
h1=16.5/90;
h2=180/90;
g=9.8;
xp=15;
if x<xp
	yp(1) = -g-h1*y(1);
	yp(2) = y(1);
else
	yp(1) = -g-h2*y(1);
	yp(2) = y(1);
end