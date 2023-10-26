%% CHE 1411L Week 10 Lab Assignment
%% Problem 7.7
% Use MATLAB to calculate the determinant of matrices A and B above. Does
% an inverse exist for each matrix? Check your results by calculating the
% determinants of matrices A and B by hand.

A = [1 3 0; 2 1 2; 4 1 3]
B = [0 1 1; 1 3 3; 2 0 3]

A_det = det(A)
B_det = det(B)

C = inv(A)
D = inv(B)

%% Problem 7.8
% Use MATLAB to show that AA^-1 = A^-1A for matrices A and B above. 

A_inA = A*C
inA_A = C*A