function A = f(x, X, Y)

n = length(X);
alfa = x(1);
beta = x(2);
vsota1 = 0;
vsota2 = 0;


for i = 1:n
    c1 = exp(beta * X(i));
    c2 = c1 * (Y(i) - alfa * c1);
    vsota1 = vsota1 + c2;
    vsota2 = vsota2 + X(i) * c2;
end

vsota2 = alfa * vsota2;

A = [vsota1; vsota2];
end