n=1000
a=b=zeros(1,n);
tx = ty = linspace (-5, 5, n);
[xx, yy] = meshgrid (tx, ty);
tz =5.*xx .^ 2 -5.* xx .* yy;
mesh(tx, ty, tz);
