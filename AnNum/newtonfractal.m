function img=newtonfractal()
%colore di convergenta
	range=-2:0.04:2;
	for t=1:101
		for s=1:101
			img(s,t)=decidi(newton([1,0,0,1],range(t)+i*range(s)));
		end
	end
end