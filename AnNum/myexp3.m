function a=myexp3(x,n)
% calcola exp(x) con troncamento all'n-esimo termine di Taylor\
% in modo piu' intelligente ++
if x>=0;
    for k=1:n
        t=t*x/k;
      a=a+t;
    end
else
    a=1/myexp2(x,-n);
end
end

