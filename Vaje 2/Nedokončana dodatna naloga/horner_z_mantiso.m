% potenčna baza: 1, x, x^2, x^3, ...

function y = horner_z_mantiso(p, x, m)

y = 0;

for k = p
    k = zaokrozi(k, m);
    x = zaokrozi(x, m);
    y = zaokrozi(x * y, m);
    y = zaokrozi(y + k, m);
end

end
    
    