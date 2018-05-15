function condlap(n)
	for i=1:n
		hold on;
		plot(i, cond(laplacian(i)))
	end
end