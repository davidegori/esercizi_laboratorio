%Disegna una griglia che mostra la deformazione del piano complesso operata dalla funzione
%n^2 è il numero di nodi della griglia, h indica che i nodi stanno nel quadrato [-h, h] x [-h, h], k indica il numero di punti per ogni lato di un quadrato di una griglia
%Si consiglia di usare i seguenti valori
n=102;
h=2;
k=6;
A=zeros(n+1, n+1);
T=zeros(n+1, n+1);
d=(2*h)/n;
x=[-h:d:h];
y=[-h:d:h];
[X,Y] = meshgrid(x,y);
A=X+i*Y;
M=A.*A+1./A; %calcola la funzione
% la funzione viene plottata:
for t=0:0.04:1
  T=M*t+A*(1-t);
  clf
  hold on
  for c=1:k:(n+1)
    plot(real(T(c, :)), imag(T(c, :)))
	  plot(real(T(:, c)), imag(T(:, c)))
  end
  drawnow
end