f = @(x) x + 4 - exp(x^2);
df = @(x) 1 - 2 * x * exp(x^2);

priblizki = 1:0.1:10;

for x0 = priblizki
    tangentna(f, df, x0, 1e-10, 5000)
end