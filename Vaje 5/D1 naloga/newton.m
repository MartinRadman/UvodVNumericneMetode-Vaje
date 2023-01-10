function [x, X, k] = newton(f, Jf, x0, tol, N)

k = 0;
razlika = -Jf(x0)\f(x0);
x1 = x0 + razlika;
dx = norm(razlika, 'inf');
X = x0;
if dx > tol && N > 0
    k = 1;
    X = [X x1];
    while dx > tol && k < N
        k = k + 1;
        razlika = -Jf(x1)\f(x1);
        x1 = x1 + razlika;
        dx = norm(razlika, 'inf');
        X = [X x1];
    end
end

x = x1;
end