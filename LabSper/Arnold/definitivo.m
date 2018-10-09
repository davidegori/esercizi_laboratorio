%definitivo
A= imread('b8_62.png'); %k iterate
b=arnold_cat1(A,62, [4,497;495,4]);
imwrite(b, 'Gori.png')
