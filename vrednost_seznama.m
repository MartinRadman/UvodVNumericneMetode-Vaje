function y = vrednost_seznama(x)
% ista funkcija kot vrednost, vendar prilagojena za sezname

% najprej inicializiramo seznam y - to naredimo za boljšo časovno
% zahtevnost, ker bi sicer lahko matlab v pomnilniku vedno znova moral
% rezervirati prostor za nov seznam, če bi npr. y gradili iz 1x1 naprej
y = x; 

% hack: ctrl+i ti vse poravna

for i = 1:length(x)

    if x(i) <= 6
        y(i) = 2 * exp(6 - x(i));
    elseif x(i) <= 20
        y(i) = x(i) - 4;
    else
        y(i) = (x(i) - 16)^2;
    end

end

fprintf('Vrednost je %f\n', y);

end


