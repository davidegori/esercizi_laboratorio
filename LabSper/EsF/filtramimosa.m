a=imread('me.jpg');
% creo i filtri
[m, n, p] = size(a);
k = floor((m-1)/2); k1 = round(k/2);
f = (2-cos(2*pi*(0:k-1)./m)).^3;
if(mod(m,2) == 0) % caso m pari: [0 1 2 3 4 3 2 1]
	f2 = [1,f,0,f(k:-1:1)];
else	% caso m dispari: [0 1 2 3 3 2 1]
	f2 = [1,f,f(k:-1:1)];
end
k = floor((n-1)/2); k1 = round(k/2);
f = (2-cos(2*pi*(0:k-1)./n)).^3;
if(mod(n,2) == 0) % caso m pari: [0 1 2 3 4 3 2 1]
	f1 = [1,f,0,f(k:-1:1)];
else	% caso m dispari: [0 1 2 3 3 2 1]
	f1 = [1,f,f(k:-1:1)];
end


% filtro
b = double(a);
for i=1:3
   v = fft2(double(a(:,:,i)));
   v = diag(f1)*v*diag(f2);
   v = ifft2(v);
   b(:,:,i) = real(v);
end
% schiarisco
mx = max(max(max(b)));
fattore = 500.0/mx;
b = b*fattore;
b = uint8(b);
imwrite(b,'mef.jpg');