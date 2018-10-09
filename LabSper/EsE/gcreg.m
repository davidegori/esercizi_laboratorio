function x = gcreg(b, psf, reg, passi)
% calcolo la psf associata a A^T
	psft = psf(end:-1:1, end:-1:1); [mb,nb] = size(b);
	b = double(b); r = b; y = zeros(mb,nb);
	for iter=1:passi
		rho = sum(sum(r.*r));
		if iter==1
			p = r;
		else
			beta = rho/rhop; p = r + beta*p;
		end
		tmp = conv2(p, psft, 'full'); q = conv2(tmp, psf, 'valid');
		% regolarizzazione
		q += reg*p;
		alpha = rho/sum(sum(p.*q)); y = y + alpha*p;
		r = r-alpha * q; rhop = rho;
		nor = sqrt(sum(sum(r.*r)))/(mb*nb);
		printf('residuo=%e\n',nor)
	end
	x = conv2(y, psft, 'full'); x = uint8(x);
end