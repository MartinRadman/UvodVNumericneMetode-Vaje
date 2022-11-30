function x = bisekcija(f, a, b, tol, koraki)

fa = f(a);
fb = f(b);
trenuten_korak = 0;

if sign(fa) == sign(fb)
    error('Robni vrednosti imata isti predznak');
end

s = b - a;

while s >= tol && trenuten_korak < koraki
    s = s/2;
    c = a + s;
    fc = f(c);

    if sign(fa) == sign(fc)
        a = c;
        fa = fc;
    end

    trenuten_korak = trenuten_korak + 1;
end

x = c;
end
