function [xk, X, k] = halley(f, df, ddf, x0, tol, N)

k = 1;
x1 = x0 - 2 * f(x0) * df(x0) / (2 * df(x0)^2 - f(x0) * ddf(x0));
X = [x0 x1];

while abs(x1 - x0) >= tol && k < N
    x0 = x1;
    x1 = x1 - 2 * f(x1) * df(x1) / (2 * df(x1)^2 - f(x1) * ddf(x1));

    X = [X x1];
    k = k + 1;
end

xk = X(end);

end