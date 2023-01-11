function E = hotelling(A)

n = length(A);
E = zeros(n, 1);

for i = 1:n
    [v, lambda] = potencna(A, ones(n, 1), -inf, 3000);
    E(i) = lambda;
    A = A - lambda * (v * v');
end