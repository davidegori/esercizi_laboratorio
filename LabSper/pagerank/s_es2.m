for k=1:5
	n=10*(10^k);
	disp(['caso ', num2str(n)])
	for g=1:3
		disp(['sottocaso densita ', num2str(10^(g-1)),'n'])
		d=10^(g-1) /n;
		H=sprand(n, n, d)~= 0;
		[y, t, it] =PageRank2(H, ones(1,n), 0.85, 1000);
		t
		it
		rapp=t/it
	end
end