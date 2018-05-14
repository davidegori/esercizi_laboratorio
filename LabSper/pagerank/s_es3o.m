q=[0.5:0.01:0.99];
n=10000;
A=sprand(n, n, 1/n)~= 0;
B=sprand(n, n, 10/n)~= 0;
C=sprand(n, n, 100/n)~= 0;
for i=1:length(q)
  [ya, ta, ita]=PageRank2(A, ones(1,n), q(i), 1000);
  [yb, tb, itb]=PageRank2(B, ones(1,n), q(i), 1000);
  [yc, tc, itc]=PageRank2(C, ones(1,n), q(i), 1000);
  a(i)=ita;
  b(i)=itb;
  c(i)=itc;
end
hold on
plot(q,a, "b")
plot(q,b, "r")
plot(q,c, "m")