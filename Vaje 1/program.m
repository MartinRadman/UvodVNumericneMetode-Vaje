% za podani x naj program vrne vrednost:
% 1. 2e^(6-x), če je x <= 6
% 2. x - 4, če je 6 < x =< 20
% 3. (x - 16)^2, če je x > 20

x = input('Vnesite število: ');

% hack: ctrl+shift+d za docker

if x <= 6
    y = 2 * exp(6 - x);
elseif x <= 20
    y = x - 4;
else
    y = (x - 16)^2;
end

fprintf('Vrednost je %f\n', y);

% fprintf je uporaben, ker ga lahko formatiramo, v nasprotju z display
% (mogoče ni res, ker nisem dobro poslušal)

% poglej si malo debugger