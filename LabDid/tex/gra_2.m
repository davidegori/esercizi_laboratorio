n=40
a=b=zeros(1,n);
tx = ty = linspace (-5, 5, n);
[xx, yy] = meshgrid (tx, ty);
tz =5.*xx .^ 2 -5.* xx .* yy;
meshc(tx, ty, tz);
print -dpdfwrite "trid.pdf"