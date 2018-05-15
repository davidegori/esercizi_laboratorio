function a=myexp(x,n)
% calcola exp(x) con troncamento all'n-esimo termine di Taylor
a=1;
for k=1:n
    a=a+pow(x,k)/fact(k);
end
end

