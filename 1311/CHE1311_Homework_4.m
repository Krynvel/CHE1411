%% CHE 1311 Homework #4 - Problem 4.3.a
% The following MATLAB scripts contain errors that will prevent them from
% executing properly. Identify and explain the errors.

% Section A: 
for m = 1:5
    A = A+1;
end
% The error is that 'A' is not a recognized function or variable. This
% error derives from the fact that 'm' has values assigned to it; however,
% the for loop is requesting that A is equal to A+1. There are no values
% for 'A'.

%% CHE 1311 Homework #4 - Problem 4.3.b

% Section B:
for i = 0:3
    A(i) = i+2;
end
% The error is that the array indices must be positive integers or logical
% values. This error is due to 0 being included in the array. 0 is only
% used as a logical value. However, that is not being done in this code.

%% CHE 1311 Homework #4 - Problem 4.3.c

% Section C:
for k = 1:10
    A(i) = k;
end
% The error is that the array indices must be positive integers or logical
% values. The for loop is requesting the i row of k to be label as A. This
% cannot be done as there are no rows at i.

%% CHE 1311 Homework #4 - Problem 4.3.d

% Section D:
A = 4;
while A < 10
    A = A + 1;
    if A > 5
        A = 5;
    end
end
% The error is that the code outputs an infinite loop. This is due to
% including an if statement that does not old a constraint to increasing
% values of A.

%% CHE 1311 Homework #4 - Problem 4.3.e

% Section E:
for m = 1:1000
    j = m/10
    A(j) = m;
end
% The error is that A is not defined.

%% CHE 1311 Homework #4 - Problem 4.7
% Suppose you borrow $1,000 from a friend, who agrees to let you make any
% monthly payment that you choose, as long as you pay 0.5% interest every
% month on the unpaid balance. Create a MATLAB function that calculates and
% outputs the number of months required to pay off the loan, with the
% payment amount as the argument of the function. Find the number of months
% to pay off the loan if you make monthly payments of:

amt_paid = input('Enter the dollar amount for a single monthly payment: ');

num_months_to_pay = numMonths(amt_paid)

% Entering $100 gives num_months_to_pay = 10.2843
% Entering $50 gives num_months_to_pay = 21.1247
% Entering $10 gives num_months_to_pay = 138.975
% Entering $2 gives a negative/imaginary number.

%% CHE 1311 Homework #4 - Problem 5.1
% Full question is in the attached excel sheet.

%% CHE 1311 Homework #4 - Problem 5.4
% Repeat Problem 5.1 with MATLAB, using a for loop and the plot command.

x = -3:6;
for i = x
    y = (x.^4)-(4*(x.^3))-(6*(x.^2))+15;
end
plot(x,y,'*'); hold on

%% CHE 1311 Homework #4 - Problem 5.5
% Repeat Problem 5.1 with MATLAB by creating a function and using the fplot
% command.

x = -3:6;
disp(plot51(x))

