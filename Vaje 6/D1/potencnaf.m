function [v, lambda] = potencnaf(f, x0, tol, N)

x0 = x0 / norm(x0);
x1 = f(x0);
lambda = x0' * x1;
k = 0;

while norm(x1 - lambda * x0) >= tol && k < N
    x0 = x1 / norm(x1);
    x1 = f(x0);
    lambda = x0' * x1;
    k = k + 1;
end

v = x0;

end