x = linspace(1, 3);
t = linspace(0, 2*pi);
z  = linspace(0, 1);

f1 = @(x) sin(x) * exp(sqrt(x));
f3 = @(x, y) (x^2 + y^2) / (1 + x + y);

% figure poskrbi, da ze za vsak plot odpre novo okno
figure
plot(x, arrayfun(f1, x));

figure
x2 = sin(t);
y2 = cos(t);
plot(x2, y2);
grid on
pbaspect([1 1 1])

figure
[A, B] = meshgrid(z, z);
mesh(z, z, arrayfun(f3, A, B));
