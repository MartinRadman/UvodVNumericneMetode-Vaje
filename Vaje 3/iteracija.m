function [xk, X, k] = iteracija(f, x0, tol, N)

k = 1;
x1 = f(x0);
X = [x0 x1];

while abs(x1 - x0) >= tol && k < N
    x0 = x1;
    x1 = f(x1);

    X = [X x1];
    k = k + 1;
end

xk = X(end);

end