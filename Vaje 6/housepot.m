function E = housepot(A,tol,N)
% Opis:
%  housepot s kombinacijo potencne metode in Householderjeve redukcije
%  izracuna vse lastne vrednosti matrike A, ki ima same po absolutni
%  vrednosti razlicne lastne vrednosti
%
% Definicija:
%  E = housepot(A,tol,N)
%
% Vhodni podatki:
%  A    matrika,
%  tol  toleranca napake priblizka za dominantni lastni par pri izvedbi
%       potencne metode (privzeta vrednost je 1e-10),
%  N    maksimalno stevilo korakov pri izvedbi potencne metode (privzeta
%       vrednost je 200)
%
% Izhodni podatki:
%  E    seznam lastnih vrednosti matrike A

if nargin < 3, N = 200; end
if nargin < 2, tol = 1e-10; end

n = size(A,1);
A = @(x) A*x;
E = zeros(n,1);
for k = 1:n-1
    % potencna metoda
    [v, E(k)] = potencnaf(A,rand(n-k+1,1),tol,N);
    
    % Householderjeva redukcija
    A = @(x) redA(A,house(v),x);
end
E(n) = A(1);

end

function w = house(x)
% pripravi vektor za Householderjevo zrcaljenje

sgnx1 = 1;
if x(1) < 0
    sgnx1 = -1;
end
w = x;
w(1) = w(1) + sgnx1*norm(x);

end

function redAx = redA(A,w,x)
% izvede mnozenje z reducirano matriko

wtw = 2/(w'*w);
y = [0; x];
Py = y - wtw*(w'*y)*w;
APy = A(Py);
PAPy = APy - wtw*(w'*APy)*w;
redAx = PAPy(2:end);

end