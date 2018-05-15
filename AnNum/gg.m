function gg(A)
%Cerchi di Geshgorin
sz=size(A);
n=sz(1);
hold on
axis('equal')
autovalori=eig(A);
plot(real(autovalori),imag(autovalori), '*');
    for k=1:n
        center=A(k,k);
        radius=0;
    for j=1:n
        if(j!=k)
            radius=radius+abs(A(k,j));
        end
    end
    circle(center, radius);
end
end

