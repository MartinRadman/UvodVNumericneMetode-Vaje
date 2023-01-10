h = 0.01;

X = h * (1:100);
[yj, kj] = IteracijaJacobi(X, @u, 1e-3, 1000);
[ys, ks] = IteracijaSeidl(X, @u, 1e-3, 1000);

[yn, ~, kn] = newton(@uvsekomponente, @JfD, X', 1e-3, 1000);