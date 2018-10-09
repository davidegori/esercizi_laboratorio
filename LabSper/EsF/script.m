a = imread(’mimosa.png’);
imshow(a);
% creo i filtri
f1 = ones(1,m); f2 = ones(1,n);
k1 = m/2+1; k2 = n/2+1;
f1(k1-70:k1+70) = 0; f2(k2-100:k2+100) = 0;
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
b = b*fattore; b = uint8(b);
imshow(b)