function [A, B, C] = nal2(n)

A = randi(100, n);

B = A * A;

C = A.^2;

end