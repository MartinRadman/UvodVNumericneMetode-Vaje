function [A, produkt] = Matrika1(n, m)

if nargin == 1
    m = n;
end

A = zeros(n, m);

for i = 1:n
    for j = 1:m
        stevec = i * j;
        imenovalec = i + j;
        A(i, j) = stevec / imenovalec;
    end
end

produkt = prod(A(1, :));

end