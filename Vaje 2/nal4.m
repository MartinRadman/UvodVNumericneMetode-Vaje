f = @(n) @(x) (x - 1/2)^2 * (x - 3/4) - 1/(2^n); 
% f(n) ti določi n v funkciji f(x)

for i = 4:10
    disp(bisekcija(f(i), single(0), single(1), 0, 50));
end

% bisekcija_demo.m na onedrive repozitoriju pokaže primer, ko izračunana
% vrednost ni blizu dejanske (n = 150), pomagaj si z fzero