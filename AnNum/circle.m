function circle(z,r)
%Disegna un cerchio
t= 0:0.001:2*pi;
plot(cos(t).*r+real(z), sin(t).*r+imag(z))
end

