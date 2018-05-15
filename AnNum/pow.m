function a=pow(x,n)
%pow furba
if n==1
    a=x;
else
    if mod(n,2)
    a=x*pow(x, n-1);
    else
    a=pow(x,n/2)*pow(x,n/2);
    end
end
end

