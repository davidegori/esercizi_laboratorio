N=[10000, 10000, 10000, 5000, 5000, 5000];
D=[10/10000, 100/10000, 1000/10000, 10/5000, 100/5000, 1000/5000];
for j=1:6
	n=N(j);
	d=D(j);
	y=[1:n];
	H=sprand(n, n, d) ~=0;
	itmax=1000;
	v=ones(1,n);
	y1=PageRank(H, v, 0.85, itmax);
	y2=PageRank(H, v, 0.99, itmax);
	[val1, sigma1] = sort(y1);
	[val2, sigma2] = sort(y2);
	w=zeros(1, n);
	for i=1:n
		w(i)=find(sigma1==sigma2(i));
	end
	subplot(2, 3, j);
	plot(w);
	title(sprintf("n: %d, el: %d",n,n*n*d))
	drawnow;
end