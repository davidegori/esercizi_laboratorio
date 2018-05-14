function y = fexp(a, e, n)
% Fast modular exponentiation: y = b^e mod n
	if (n == 1)
		y = 0;
		return
	end
	y = 1;
	a = mod(a,n);
	while ( e > 0 )
		if ( mod(e,2) == 1)
			y = mod((y * a),n);
		end
		e = bitshift(e,-1);
		a = mod( (a * a),n );
	end
end