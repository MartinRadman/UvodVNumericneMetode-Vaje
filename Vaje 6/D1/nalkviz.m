A = delsq(numgrid('C', 10));
x0 = ones(length(A), 1);
x0 = x0 / norm(x0);

[v, l] = potencna(A, x0, 1e-5, 1000);

fun = @(x) A\x;

[v1, l1] = potencnaf(fun, x0, 1e-5, 5);
l1 = 1 / l1;

E = hotelling(A);
