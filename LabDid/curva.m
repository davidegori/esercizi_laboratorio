format long
k=0.82;
X=0:0.001:1;
Y=((1-X.^(2/5))/(1+k)).^(5/2);
hold on
plot(X, Y)
plot(-X, Y)
plot(-X, -Y)
plot(X, -Y)

%parametrizzo con x nel primo quadrante, poi moltiplico per 4
f=@(x) (1+(1-x^(2/5))^3 * x^(-6/5) /(1+k)^5)^(1/2);
integrale=4*quad(f,0,1)
