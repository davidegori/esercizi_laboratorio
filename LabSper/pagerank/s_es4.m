n=10000;
d=10/n;
y=[1:n];
H=sprand(n, n, d) ~=0;
itmax=1000;
v=ones(1,n);
y1=PageRank(H, v, 0.85, itmax);
y2=PageRank(H, v, 0.99, itmax);
[val1, sigma1] = sort(y1);
[val2, sigma2] = sort(y2);
w=zeros(1, n);
for i=1:n
  w(i)=find(sigma1==sigma2(i));
end
clf
for i=1:4
	subplot(2, 2, i);
	plot(w(1:[100 1e3 2e3 1e4](i)));
end
