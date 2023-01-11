A = [4 -8 8 4; 2 6 -2 2; 2 -2 9 -2; 4 8 -4 0];
premik = 1;

n = length(A);

E = zeros(n, 1);

for i = 1:3
    A = qriteracija(A, 1, 1e-8);
    E(i) = A(end, end);
    A = A(1:(end - 1), 1:(end - 1));
end

E(end) = A(1);


% 2. del

x0 = (1/2) * ones(4, 1);
inverzna_potencna(A, x0, max(E), 1e-6, Inf);