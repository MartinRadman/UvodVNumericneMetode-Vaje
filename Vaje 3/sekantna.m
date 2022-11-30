function [xk, X, k] = sekantna(f, x0, x1, tol, N)

k = 0;
X = [x0 x1];

while abs(x1 - x0) >= tol && k < N
    x2 = x1 - f(x1) * (x1 - x0) / (f(x1 - f(x0)));
    x0 = x1;
    x1 = x2;

    X = [X x1];
    k = k + 1;
end

xk = X(end);

end