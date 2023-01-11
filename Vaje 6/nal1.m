A = [4 1 -1 0; 1 3 -1 0; -1 -1 5 2; 0 0 2 4];
x0 = ones(4, 1);

% naloga a
[va, lambdaa] = potencna(A, x0, 1e-5, 100);

% naloga b
fun = @(x) A\x;

[vb, lambdab] = potencnaf(fun, x0, 1e-5, 100);
lambdab = 1/lambdab;

A2 = A - 2.5 * eye(4);
fun2 = @(x) A2\x;

A3 = A - 4.5 * eye(4);
fun3 = @(x) A3\x;

[vb2, lambdab2] = potencnaf(fun2, x0, 1e-5, 100);
lambdab2 = 1/lambdab2 + 2.5;

[vb3, lambdab3] = potencnaf(fun3, x0, 1e-5, 100);
lambdab3 = 1/lambdab3 + 4.5;

% naloga c
E = housepot(A, 1e-3, 100);