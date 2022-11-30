% ista vsebina kot program.m, samo izražena s funkcijo

x = input('Vnesite vrednost: ');
y = vrednost(x);

fprintf('Vrednost je %f\n', y);

% ko zaženemo funkcijo, se spremenljivke znotraj nje ne shranijo v naše
% okolje, isto če bi npr. vzeli neko matriko in jo vstavili v funkcijo ter
% jo tam spreminjali, te spremembe ne bi bile vidne, ko gremo ven iz
% funkcije