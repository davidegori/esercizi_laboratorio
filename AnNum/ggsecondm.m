function ggsecondm(A)
	sz=size(A);
	n=sz(1); 
	close all %elimina i disegni preesistenti
	hold on %fa si’ che ogni disegno non cancelli il precedente
	axis("equal")
	for t= 0 : .01 : 1
		a = diag(diag(A)) + t*(A-diag(diag(A)));
		autovalori=eig(a);
		plot(real(autovalori),imag(autovalori),"*");
		pause(0.01);
	end
	% ’.*’: disegna solo i punti, non collegandoli con linee
	%’help plot’ per altre stringhe magiche
	for k=1:n
		center=A(k,k);
		radius=-abs(center); %accumulatore
		for j=1:n
			radius += abs(A(k,j));
		end
		circle(center,radius);
	end
end

