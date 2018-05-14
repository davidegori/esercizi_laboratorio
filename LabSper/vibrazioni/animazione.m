function animazione(m, k, theta, y0, v0, rate, secs)
% costruisco la matrice K
n = length(m);
K = diag(k(1:n)+k(2:n+1)) - diag(k(2:n),-1) - diag(k(2:n),1);
% costruisco la matrice A
A = zeros(2*n,2*n);
A(1:n, n+1:2*n) = eye(n);
A(n+1:2*n, 1:n) = -diag(1./m)*K;
A(n+1:2*n, n+1:2*n) = -diag(theta./m);
% formo le condizioni iniziali
w0 = [y0; v0];
% calcolo esponenziale
B = expm((1/rate)*A);
% animazione
x=[0:n+1]/(n+1);
plot(x,[0;y0;0],'LineWidth',2); axis([0,1,-1,1]);
disp('premi un tasto per iniziare')
pause
for i=1:rate*secs-1
w0 = B*w0;
plot(x,[0;w0(1:n);0], 'LineWidth',2); axis([0,1,-1,1]);
pause(0.05)
end