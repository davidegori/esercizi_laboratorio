function [y, tempo, it] = PageRank2(H, v, gamma, itmax)
tic
n = size(H,1);
usn = 1/n;
e = ones(n,1);
d = H*e;
d = d';
dang = d==0;
dh = d + dang*n;
dh = 1./dh;
x = rand(1,n);
x = x/sum(x);
v = v/sum(v);
for it=1:itmax
   y = x.*dh;
   y = y*H + usn*sum(dang.*x);
   y = y*gamma+(1-gamma)*v;
   err = max(abs(x-y));
   x = y;
   %disp([it,err])
   if err<1.e-13*max(x)
      break
   end
end
tempo=toc;
it;
