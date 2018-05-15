function a=mydet2(A)
	%calcola il determinante con Gauss
	y=0
	n=size(A);
	n=n(1);
	if n==1
	else
		if A(1)==0
			for k=1:n
				A(i,:)=A(i, :)-A(i, 1)/A(1,1)*A(i, :);
			end
			a=A(1,1)*mydet2(minor(A, 1, 1))
		else
			for k=1:n
				if A(i,:)==0
				else
					y=i;
					break
				end
			end
			if y==0
				a=mydet2(minor(A, 1, 1));
			else
				A(1,:)=f
				A(1,:)=A(y, :)
				A(y,:)=f
				mydet(A)
			end
		end
	end
end