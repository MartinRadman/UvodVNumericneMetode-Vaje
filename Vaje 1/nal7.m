function [polinom, odvod] = nal7(x, a)

% protip: glej doc polynomials

polinom = poly(x);
polinom = (a / polinom(1)) * polinom;

odvod = polyder(polinom);

evaltocke = linspace(-10, 10);

% hack za risanje več grafov hkrati
hold on
plot(evaltocke, polyval(polinom, evaltocke));
plot(evaltocke, polyval(odvod, evaltocke));
hold off

end