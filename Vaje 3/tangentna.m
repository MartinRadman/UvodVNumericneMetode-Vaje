function [xk, X, k] = tangentna(f, df, x0, tol, N)

x1 = x0 - f(x0) / df(x0);
X = [x0 x1];
k = 1;

while abs(x0 - x1) >= tol && k < N
    x0 = x1;
    x1 = x1 - f(x1) / df(x1);

    X = [X x1];
    k = k + 1;
end

xk = X(end);

end