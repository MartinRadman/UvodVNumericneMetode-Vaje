function y = uvsekomponente(x)

n = length(x);
y = zeros(n, 1);

for i = 1:n
    y(i) = u(x, i);
end

end

