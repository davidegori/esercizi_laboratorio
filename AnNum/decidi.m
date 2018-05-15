function val=decidi(x)
%decide la vicinanza dei vettori alle radici di x^3+1
	a=abs(x+1);
	b=abs(x-1/2-sqrt(3)/2*i);
	c=abs(x-1/2+sqrt(3)/2*i);
	val=3;
	if(a<b && a<c)
		val=1;
	else
		if(b<c && b<a)
			val=2;
		end
	end
end