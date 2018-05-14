q=[0.5:0.01:0.99];
n=10000;
d=10/n;
H=sprand(n, n, d)~= 0;
for i=1:length(q)
  [y, t, it]=PageRank2(H, ones(1,n), q(i), 1000);
  f(i)=it;
end
clf
plot(q,f)