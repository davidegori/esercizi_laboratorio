n = 101;
m = ones(n,1)*0.01/n;
k = ones(n+1,1)*1.e6;
theta = 1.e-3 * ones(n,1);
q = 5;
y0 = zeros(n,1);
v0 = zeros(n,1);
for j=-4:4
v(q-j) = 1;%0000*exp(-0.001*j^2);
end

rate = 16000;
secs = 0.1;
pickup = 20;