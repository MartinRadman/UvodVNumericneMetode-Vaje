function A = nal1(n)

diagonala = diag(1:n);

zgornji_trikortnik = triu(2 * ones(n), 1); 

poddiagonala = diag(repelem(-1, n - 1), -1);

A = diagonala + zgornji_trikortnik + poddiagonala;

end