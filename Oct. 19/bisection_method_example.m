% Set the tolerance value
tol = 0.00001;
soltol = 0.0001;
% Enter lower and upper limits
low = input('Enter the lower limit:  ');
high = input('Enter the higher limit:  ');

% Repeat caluclations until interval is less than 2*tolerance
while high-low > 2*tol
    mid = (high+low)/2;
    % Evaluate function at lower limit and midpoint
    fl = fun1(low);
    fm = fun1(mid);
    % Multiply values: if product > 0, signs are same. Keep upper limit
    % If products <= 0, signs are opposite. Keep lower limit
    prod = fl*fm;
    if prod > 0
        low = mid; 
    else
        high = mid;
    end
end
% Root = midpoint of interval. Print out root
root = (high+low)/2;
fprintf('\n\n Root found: %f\n\n',root)

% Check to see if converges value is a root
if abs(fm) < soltol
    root = (high+low)/2;
    fprintf('\n\n Root found: %f\n\n',root)
else
    fprintf('\n\n No root found. \n\n')
end
