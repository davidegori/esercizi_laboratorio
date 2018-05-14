s=suonacorda(m, k, theta, y0, v0, rate, secs, pickup);
sound(s);
f=fft(s);
%pause
clf
plot(abs(f(1:secs*rate/2)))
%pause
%clf
%animazione(m, k, theta, y0, v0, rate, secs)
