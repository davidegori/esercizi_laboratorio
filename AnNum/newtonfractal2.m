function img=newtonfractal2(p)
%colore di convergenta, da finire
	range=-2:0.04:2;
	for t=1:101
		for s=1:101
			img(s,t)=decidi(newton(p,range(t)+i*range(s)), p);
		end
	end
end