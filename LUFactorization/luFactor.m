function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
% Error checking
[m, n] = size(A);
if m ~= n
    error('Input matrix must be square');
end

% Initialize matrices
L = eye(n);
U = A;
P = eye(n);

% Partial pivoting
for k = 1:n-1
    % Find the row with the largest pivot element
    [~, pivot] = max(abs(U(k:n, k)));
    pivot = pivot + k - 1;
    
    % Swap rows in U, L, and P
    temp = U(k, :);
    U(k, :) = U(pivot, :);
    U(pivot, :) = temp;
    
    temp = L(k, 1:k-1);
    L(k, 1:k-1) = L(pivot, 1:k-1);
    L(pivot, 1:k-1) = temp;
    
    temp = P(k, :);
    P(k, :) = P(pivot, :);
    P(pivot, :) = temp;
    
    % Update L and U
    for j = k+1:n
        L(j, k) = U(j, k) / U(k, k);
        U(j, :) = U(j, :) - L(j, k)*U(k, :);
    end
end

end