% kako tf mi je ratal to vse v prvo spisat

X = (1/5 * (0:10))';
n = length(X);
fun = @(x) x .* sin(3 .* x);
Y = fun(X);

% a naloga

Xia = [X.^3 X.^2 X ones(n, 1)];
p1 = Xia\Y;

raz1 = norm(Y - polyval(p1, X), 'inf');

% b naloga

Xib = [X.^3 - 1, X.^2 - 1, X - 1];
Yb = Y - sin(3);
p2 = Xib\Yb;
p2 = [p2; -sum(p2) + sin(3)];

raz2 = norm(Y - polyval(p2, X), 'inf');

% c naloga

X1 = X(1:6, 1);
X2 = X(7:11, 1);

Xic1 = [X1.^3 - 3 * X1 + 2 * ones(6, 1), X1.^2 - 2 * X1 + ones(6, 1)];
Yc1 = Y(1:6, 1) + (-sin(3) - 3 * cos(3)) * X1 + 3 * cos(3);

Xic2 = [X2.^3 - 3 * X2 + 2 * ones(5, 1), X2.^2 - 2 * X2 + ones(5, 1)];
Yc2 = Y(7:11, 1) + (-sin(3) - 3 * cos(3)) * X2 + 3 * cos(3);

z1 = Xic1\Yc1;
zc1 = sin(3) + 3 * cos(3) - 3 * z1(1) - 2 * z1(2);
z1 = [z1; zc1];
zd1 = sin(3) - sum(z1);
z1 = [z1; zd1];

z2 = Xic2\Yc2;
zc2 = sin(3) + 3 * cos(3) - 3 * z2(1) - 2 * z2(2);
z2 = [z2; zc2];
zd2 = sin(3) - sum(z2);
z2 = [z2; zd2];

raz3 = norm(Y - [polyval(z1, X1); polyval(z2, X2)], 'inf');