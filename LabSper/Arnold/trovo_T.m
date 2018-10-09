B= imread('b8_62.png'); %k iterate
A= imread('b8_63.png'); %k+1 iterate
%A=[1, 2, 3;4, 5, 6;7, 8, 9];
%B=[1, 9, 5;6, 2, 7;8, 4, 3];
n=size(A,1);
X=ones(n);
Y=ones(n);
for i=1:3;
	X.*=(B(:,:,i)==A(1,2,i));
	Y.*=(B(:,:,i)==A(2,1,i));
end
%Per trovare quella inversa basta scambiare A e B
%trova tutti quelli uguali a (1,2) e (2,1)
ex = find(X == 1);
ey = find(Y == 1);
for i=1:length(ex)
	for j=1:length(ey)
		%dove vengono mandati da T? (considerando la traslazione)
		a=[mod(ex(i)-1,n), floor((ex(i)-1)/n)];	% (1,2)
		b=[mod(ey(j)-1,n), floor((ey(j)-1)/n)];	% (2,1)
		K=[b(1),a(1);b(2),a(2)];
		if (mod(K(1,1)*K(2,2)-K(1,2)*K(2,1),n)==1 && mod(K*[4,3;5,4]-eye(2),n)==0)
			'EUREKA'
			K
		end
	end
end