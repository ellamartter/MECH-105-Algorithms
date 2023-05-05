LU Factorization Algorithm
------
This function accomplishes LU factorization with pivoting for a given system of equations.
___________

**Inputs:** a coefficient matrix

*Note: coefficient matrix must be square.*
___________

**Outputs:** a lower triangle matix, an upper triangular matrix, and a permutation matrix
___________

**Example:** completing LU factorization on the following system of equations

x_1 + 9x_2 + 2x_3 = 9

5x_1 + 7x_2 + 3x_3 = 23

4x_2 + x_3 = 2

luFactor(1 5 0 ; 9 7 4 ; 2 3 1)
