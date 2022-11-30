function [tocka, v_novi] = zrcali(S, v)

S1 = S + v;
dy = S1(2) - S(2);
dx = S1(1) - S(1);
k = dy/dx;
n = S(2) - k * S(1);

p = @(x) k * x + n;

K1 = [k^2 + 1, 2 * k * n, n^2 - 9];
K2 = [k^2 + 1, 2 * k * n, n^2 - 16];

kandidati2 = roots(K2)';

for kandidat = kandidati2
    if v(1) ~= 0
        if sign(kandidat - S(1)) == sign(v(1))
            tocka = [kandidat, p(kandidat)];
            break;
        end
    else
        if sign(p(kandidat) - S(2)) == sign(v(2))
            tocka = [kandidat, p(kandidat)];
            break;
        end
    end
end

kandidati1 = roots(K1)';
if isreal(kandidati1)
    kandidat1 = kandidati1(1);
    kandidat2 = kandidati2(2);
    k1y = p(kandidat1);
    k2y = p(kandidat2);
    k1 = [kandidat1, k1y];
    k2 = [kandidat2, k2y];
    razdalja1 = norm(k1 - S);
    razdalja2 = norm(k2 - S);
    
    if razdalja1 < razdalja2
        tocka = k1;
    else
        tocka = k2;
    end
end


k_tangente = -tocka(1) / tocka(2);
n_tangente = tocka(2) - k_tangente * tocka(1);

tangenta = @(x) k_tangente * x + n_tangente;

t1 = tangenta(0);
t2 = tangenta(1);

vt = -[0 t1] + [1 t2];

vt = [vt 0];
v = [v 0];
kot = atan2(norm(cross(vt, v)), dot(vt, v)); % ukradeno z interneta
kot = abs(kot);

if kot > pi/2
    kot = pi - kot;
end

R = [cos(2 * kot), -sin(2 * kot); sin(2 * kot), cos(2 * kot)];

v_novi = R * v(1:2)';
v_novi = v_novi';
v_novi = 1e-10 * v_novi / norm(v_novi);

if norm(tocka + v_novi) > 4 || norm(tocka + v_novi) < 3
    v_novi = -v_novi;
end


end

