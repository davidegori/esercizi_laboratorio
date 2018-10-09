function Y = ruota(X, p, ang)
% function Y = ruota(X, p, ang)
% ruota limmagine X attorno a p di un angolo ang
% in modo antiorario
m = size(X,1); n = size(X,2); c = size(X,3);
i0 = p(1); j0=p(2);
vi = kron(ones(1,m),[1:m]); vj = kron([1:m],ones(1,m));
% trasforma
S = [vi-i0;vj-j0];
R = [cos(ang) sin(ang);-sin(ang) cos(ang)];
T = R*S + [i0;j0]*ones(1,n*m);
T = round(T);
% controllo delle coordinate fuori dal supporto
T = max(T,0);
T(1,:) = min(T(1,:),m+1); T(2,:) = min(T(2,:),n+1);
T = T + 1;
% da coppie di indici a singolo indice
Z = (m + 2)*(T(2,:)-1) + T(1,:);
% disposizione degli indici fatta per colonne
Z = reshape(Z,m,n);
XX = uint8(zeros(m + 2, n + 2));
for i=1:c
XX(2:m+1, 2:n+1) = X(:,:,i);
Y(:,:,i) = XX(Z);
end