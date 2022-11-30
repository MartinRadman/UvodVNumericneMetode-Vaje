function [xk, X, k] = fff(f, df, ddf, x0, tol, N)

k = 1;
x1 = x0 - f(x0) / df(x0) - ddf(x0) * df(x0)^2 / (2 * df(x0)^3);
X = [x0 x1];

while abs(x1 - x0) >= tol && k < N
    x0 = x1;
    x1 = x1 - f(x1) / df(x1) - ddf(x1) * df(x1)^2 / (2 * df(x1)^3);

    X = [X x1];
    k = k + 1;
end

xk = X(end);

end

