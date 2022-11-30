f = @(x) x + 4 - exp(x^2);
df = @(x) 1 - 2 * x * exp(x^2);
ddf = @(x) -2*exp(x.^2) - 4*x.^2.*exp(x.^2);

nicla = fzero(f, 1);
tol = 1e-10;
N = 5000;

priblizki = 1:0.1:10;

najmanj_korakov = inf;

for x0 = priblizki
    [~, X, ~] = tangentna(f, df, x0, tol, N);
    k = 0;
    for x = X
        if abs(x - nicla) < 1e-10 
            break;
        end
        
        k = k + 1;
    end

    if k < najmanj_korakov
        najmanj_korakov = k;
    end
end