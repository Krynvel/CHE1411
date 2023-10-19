%Apply Newton's Method to find root of equation defined in function
%'ppt6_2_p16_fun1' Derivative of 'ppt6_2_p16_fun1' is function
%'ppt6_2_p16_fun1pr'

%set cpnverge tolerance
tol = 0.00001;

%Input initial guess
x = input(' Enter initial guess\n');

%Find value of function at x
f = ppt6_2_p16_fun1(x);

while abs(f) > tol
    fpr = ppt6_2_p16_fun1pr(x);
    x = x - f/fpr;
    f = ppt6_2_p16_fun1(x);
end

fprintf('\n\n Root found: %.4f\n',x)
