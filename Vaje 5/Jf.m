function A = Jf(x, X, Y)

n = length(X);
alfa = x(1);
beta = x(2);

vsota1 = 0;
vsota2 = 0;
vsota4 = 0;

for i = 1:n
    xi = X(i);
    c1 = exp(beta * xi);
    c2 = c1 * (Y(i) - 2 * alfa * c1);
    
    vsota1 = vsota1 - c1^2;
    vsota2 = vsota2 + xi * c2;
    vsota4 = vsota4 + xi^2 * c2;
end

vsota3 = vsota2;
vsota4 = alfa * vsota4;

A = [vsota1 vsota2; vsota3 vsota4];
end