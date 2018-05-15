function eigt(A)
%plot autovalori sec th gg
sz=size(A);
k=sz(1);
hold on
axis('equal')
D=zeros(k);
R=zeros(k);
for i=1:k
    D(i,i)=A(i,i); 
end
for i=1:k
  for j=1:k
    if(j!=i) R(i,j)=A(i,j);
  end
end
t = linspace(0,1,10);
for  i=1:10
    hold on
    autovalori=eig(R+t(i)*D);
    plot(real(autovalori),imag(autovalori), '*');
end
end

