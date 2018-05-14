a:=0;
b:=0;
c:=0;
d:=0;
x:=550282;

for i from 1 by 1 to 100000 do
        x:=1-2*frac(1/x)+1/x:
        if 0<x and x<1 then
                a:=a+1;
        elif 1<x and x<2 then
                b:=b+1;
        elif 2<x and x<3 then
                c:=c+1;
        elif 3<x and x<4 then
                d:=d+1;
        end if;
end do:
printf("Ci sono %d valori fra 0 e 1, %d fra 1 e 2, %d fra 2 e 3, %d fra 3 e 4 \n", a, b, c, d);


