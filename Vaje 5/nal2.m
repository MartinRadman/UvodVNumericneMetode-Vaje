tocke = [-0.5 -0.3; -0.3 -0.7; 0.1 -0.8; 0.8 -0.7; 0.9 -0.1; 0.5 0.5;...
    0.2 0.6; -0.1 0.7; -0.3 0.6; -0.6 0.2];
X = tocke(:, 1);
Y = tocke(:, 2);
n = length(X);
rez = ones(n, 1);

fe = @(a, b, c, d, e, x, y) a * x.^2 + b * x .* y + c * y.^2 + d * x + e * y;

% b naloga
A = [X.^2, X .* Y, Y.^2, X, Y];

% normalni sistem
x0 = (A' * A)\(A' * rez);

% qr
[Q, R] = qr(A);
x1 = R\(Q' * rez);

% vgrajena funkcija
x2 = A\(rez);

% izris
x = linspace(-1, 1);
y = linspace(-1, 1);
[Xgrid, Ygrid] = meshgrid(x, y);
Z = fe(x2(1), x2(2), x2(3), x2(4), x2(5), Xgrid, Ygrid);

hold on
plot(X, Y, 'o', 'MarkerFaceColor', 'k', 'MarkerEdgeColor', 'k');
contour(Xgrid, Ygrid, Z, [1 1]);
hold off
axis equal

