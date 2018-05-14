n = 101;
m = ones(n,1)*0.01/n;
k = ones(n+1,1)*1.e6;
theta = 1.e-3 * ones(n,1);
q = 5;
y0 = zeros(n,1);
for i=1:q
y0(i) = i/q;
end
for i=q+1:n
y0(i) = 1-(i-q)/(n+1-q);
end
v0 = zeros(n,1);
rate = 16000;
secs = 0.1;
pickup = 20;