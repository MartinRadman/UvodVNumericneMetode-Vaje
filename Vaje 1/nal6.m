function [vsota, vektor] = nal6(x)

vsota = sum(x);

dolzina = length(x);
vektor = zeros(1, dolzina);
vektor(1) = x(1);

for i = 2:dolzina
    vektor(i) = vektor(i - 1) + x(i);
end

end