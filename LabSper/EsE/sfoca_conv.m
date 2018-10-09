function b = sfoca_conv(a, psf)
% function b = sfoca_conv(a, psf)
% sfoca una immagine memorizzata nella variabile a
% usando la PSF memorizzata nella variabile psf
% in uscita l’immagine sfocata b
% la function salva l’immagine nel file "sfocata.jpg"
	a = double(a);
	s = size(a);
	if length(s)==3
		b1 = conv2(a(:,:,1),psf,'valid');
		b2 = conv2(a(:,:,2),psf,'valid');
		b3 = conv2(a(:,:,3),psf,'valid');
		b = b1; b(:,:,2) = b2; b(:,:,3) = b3;
	else
		b = conv2(a,psf,'valid');
	end
	b = uint8(b);
	imwrite(b,'sfocata.jpg')
end