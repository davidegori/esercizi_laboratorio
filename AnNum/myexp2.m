function a=myexp2(x,n)
% calcola exp(x) con troncamento all'n-esimo termine di Taylor\
% in modo piu' intelligente
for k=1:n
    t=t*x/k;
    a=a+t;
end
end