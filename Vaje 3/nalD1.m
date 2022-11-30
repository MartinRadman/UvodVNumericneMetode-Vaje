S = [3.5, 0.5];
v = [1, 2];
N = 5;

tocke = [];

for i = 1:N
    [S, v] = zrcali(S, v);
    tocke = [tocke, S];
end
