y = 0;

for i = 0:5
    a = 2^(-(4 * i + 1));
    b = 2^(-(4 * i + 2));
    y = y + a + b;
end

y = (y + 2^(-24)) * 2^(-3);

raz = single(0.1) - y;

% za lepšo rešitev uporabi bin2dec