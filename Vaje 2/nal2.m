x = single(2^(-1) + 2^(-13) + 2^(-24));
y = single(2^(-1) + 2^(-13));

rez1 = x * x - y * y;
rez2 = (x - y) * (x + y);

rez = double(x)^2 - double(y)^2;

rel1 = (double(rez1) - rez) / rez;
rel2 = (double(rez2) - rez) / rez;