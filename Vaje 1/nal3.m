function A = nal3(x, y)

n = length(x);

m = length(y);

A = zeros(n, m);

for i = 1:m
    if y(i) == 0
        y(i) = 1;
    end
end

for i = 1:n
    for j = 1:m
        A(i, j) = x(i) / y(j);
    end
end

end