function y = specchio_for(x, ang)
% Esegue l'esercizio D3, occorre specificare un angolo, perché
%la proiezione va all'inzinito
	m = size(x,1);
	n = size(x,2);
	y = x;
	for jp = 1 : n
		j = round(n/2-n/(2*ang)*atan(tan(ang)*(1-2*jp/m)));
		if(j>0 && j<=m)
			y(:,jp,:) = x(:,j,:);
		else
			y(:,jp,:) = 0;
		end
	end
end