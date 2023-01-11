function A = qriteracija(A, premik, tol)

A = hess(A);
n = length(A);
k = 0;

predzadnji = A(end, end - 1);

vsotaSosedov = abs(A(end - 1, end - 1)) + abs(A(end, end));


while abs(predzadnji) > tol * vsotaSosedov
    A = hess(A);
    premik = A(n, n);
    Ap = A - premik * eye(n);
    [Qp, Rp] = qr(Ap);
    A = Rp * Qp + premik * eye(n);
    k = k + 1;
    predzadnji = A(end, end - 1);
    vsotaSosedov = abs(A(end - 1, end - 1)) + abs(A(end, end));
end

end