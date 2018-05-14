for t=0:0.1:10
n = 101;
m = ones(n,1)*0.01/n;
k = ones(n+1,1)*1.e6;
theta = 1.e-3 * ones(n,1);
q = 5;
y0 = zeros(n,1);
v0 = zeros(n,1);
for j=-4:4
v0(q-j) = t*10000*exp(-0.001*j^2);
end
rate = 16000;
secs = 0.1;
pickup = 20;
%% corda di riferimento
s=suonacorda(m, k, theta, y0, v0, rate, secs, pickup);
f=fft(s);
sound(s);
subplot(2, 2, 1);
plot(s);
subplot(2, 2, 2);
plot(abs(f(1:secs*rate/2)));

%% corda esercizio
p=51;
m(p)=100*m(1);
t=suonacorda(m, k, theta, y0, v0, rate, secs, pickup);
f=fft(t);
sound(t);
subplot(2, 2, 3);
plot(t);
subplot(2, 2, 4);
plot(abs(f(1:secs*rate/2)));
drawnow
pause
end