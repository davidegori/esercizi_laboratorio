%verifico che trovo_T funzioni
A= imread('b8_62.png'); %k iterate
B= imread('b8_63.png'); %k+1 iterate
C=arnold_cat(A, 1, [4, 3;5, 4]);
D=C-B;
ex = find(D ~= 0)
D