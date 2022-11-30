% a_n = (1/2)^n
% b_n = (1/3)^n

a = zeros(1, 51);
b = zeros(1, 51);

% poračuna točne vrednosti

%for i = 0:50
%    a(i + 1) = (1/2)^i;
%    b(i + 1) = (1/3)^i;
%end

% poračuna netočne vrednosti, ker je naloga to pričakovala od nas in ni
% vedela, da sem predober numerični programer

a(1) = 1;
a(2) = 1/2;

b(1) = 1;
b(2) = 1/3;

for i = 3:51
    a(i) = 5/2 * a(i - 1) - a(i - 2);
    b(i) = 10/3 * b(i - 1) - b(i - 2);
end

%indeksi = 0:50;

figure(1);
scatter(indeksi, a);

figure(2);
scatter(indeksi, b);

% tretja je očitno narobe zgenerirana zaradi zaokrožitvenih napak

b(51) = 0;
b(50) = 1;

% b_(n-2) = 10/3 * b_(n-1) - b_n

for i = 49:-1:1
    b(i) = 10/3 * b(i + 1) - b(i + 2);
end

b = b / b(1);

figure(3);
scatter(indeksi, b);

max_razlika = max(b' - (1/3).^(0:50)');