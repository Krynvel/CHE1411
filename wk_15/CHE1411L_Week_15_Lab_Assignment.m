%% CHE 1411L Assignment Week 15
%% Problem 1a: Solve the following set of equations using MATLAB to determine no, unique, or an infinite solution.

A = [-6 2 -2;-3 4 -3;2 4 -7];
B = [15;13;-9];

ra_a = rank(A)
ra_b = rank(B)
ra_c = ra_a/ra_b

if ra_a == ra_b || ra_a == length(A)
   fprintf("The set as a unique solution.")
else if ra_a == ra_b || ra_b < length(A)
    fprintf("The set has infinite solutions.")
else
    fprintf("The set has no solution.")
end
end

X = inv(A) * B

%% Problem 1b: Solve the following set of equations using MATLAB to determine no, unique, or an infinite solution.

A = [1 1;1 -1;2 -5];
B = [3;1;10];

ra_a = rank(A)
ra_b = rank(B)
ra_c = ra_a/ra_b

if ra_a == ra_b || ra_a == length(A)
   fprintf("The set as a unique solution.")
else if ra_a == ra_b || ra_b < length(A)
    fprintf("The set has infinite solutions. Use left division.")
else
    fprintf("The set has no solution.")
end
end

X = A\B

%% Problem 2: Solve the system of two nonlinear equations using Excel solver.
% This problem was solved in Excel attached at the end of this MATLAB
% published pdf.

%% Problem 3a: Use Goal Seek and Solver in Excel to solve the problem.
% This problem was solved in Excel attached at the end of this MATLAB
% published pdf.

%% Problem 3b: Use MATLAB to solve the problem: a) create a function, b) create a script using 'fzero' and format output at 'fprintf'

x0 = 0.9;
f_x = @thermo_15;
eq_comp = fzero(f_x, x0)

CO_comp_s = 1;
H2O_comp_s = 1;
CO2_comp_s = 0;
H2_comp_s = 0;
to_comp_s = 2;

CO_comp_e = 1-eq_comp;
H2O_comp_e = 1-eq_comp;
CO2_comp_e = eq_comp;
H2_comp_e = eq_comp;
to_comp_e = 2;

yi_co = CO_comp_e/to_comp_e;
yi_h2o = H2O_comp_e/to_comp_e;
yi_co2 = CO2_comp_e/to_comp_e;
yi_h2 = H2_comp_e/to_comp_e;

fprintf("The starting compositions of:\nCO was %d, \nH2O was %d, \nCO2 was %d, \nand H2 was %d.\n", CO_comp_s,H2O_comp_s,CO2_comp_s,H2_comp_s)
fprintf("\nThe ending compositions of:\nCO was %d, \nH2O was %d, \nCO2 was %d, \nand H2 was %d.\n", CO_comp_e,H2O_comp_e,CO2_comp_e,H2_comp_e)
fprintf("\nThe yi of:\nCO was %d, \nH2O was %d, \nCO2 was %d, \nand H2 was %d.\n", yi_co, yi_h2o, yi_co2, yi_h2)


