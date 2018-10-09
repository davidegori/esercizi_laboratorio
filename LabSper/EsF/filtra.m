function W = filtra(V, f1, f2)
	[m, n] = size(V);
	% calcolo fft di righe e colonne
	V = double(V); U = fft2(V);
	% filtro e antitrasformo
	W = ifft2(diag(f1)*U*diag(f2));
	% ripulisco
	W = real(W); % tolgo eventuale roundoff immaginario
	W = uint8(W); % trasformo variabile double in intera
	% riportando i valori tra 0 e 255
end