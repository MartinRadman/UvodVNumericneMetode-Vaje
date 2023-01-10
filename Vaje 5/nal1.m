tocke = [1 8; 2 9; 3 6; 4 7; 5 4; 6 3; 7 2;...
    8 3; 9 2; 10 1];


% a naloga
vsota = sum(tocke);
vsota_kvadratov = sum(tocke.^2);
vsota_logaritmov = sum(log(tocke));
posebna_vsota = sum(tocke(:, 1) .* log(tocke(:, 2)));

A = [length(tocke) vsota(1); vsota(1) vsota_kvadratov(1)];
b = [vsota_logaritmov(2); posebna_vsota];

r = A\b;
r1 = r(1);
r2 = r(2);

alfa = exp(r1);
beta = r2;
x0 = [alfa; beta];

% c naloga z Newtnom
X = tocke(:, 1);
Y = tocke(:, 2);
nf = @(x) f(x, X, Y);
nJf = @(x) Jf(x, X, Y);
[x1, ~, ~] = newton(nf, nJf, x0, 1e-10, 100);

% c naloga z vgrajeno metodo
minkvadrat = @(x) sum((Y - x(1) * exp(x(2) * X)).^2);
x2 = fminsearch(minkvadrat, x0);

% izris resitev
t = linspace(min(X),max(X));
fun = @(a, b, x) a * exp(b * x);

clf
plot(X,Y,'o','MarkerFaceColor','k','MarkerEdgeColor','k');
hold on
h = plot(t,fun(x1(1),x1(2),t), t,fun(x2(1),x2(2),t), t,fun(x0(1),x0(2),t));
hold off
legend(h, 'Resitev dobljena z Newtonovo metodo', ...
    'Resitev dobljena z vgrajeno metodo', 'Zacetni priblizek');