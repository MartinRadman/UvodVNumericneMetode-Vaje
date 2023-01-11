function x = inverzna_potencna(A, x, lambda, tol, N)
    k = 0;
    while norm(A * x - lambda * x) >= tol &&  k < N 
        y = (A - lambda * eye(size(A))) \ x;
        x = y / norm(y);
        k = k + 1;
    end
end