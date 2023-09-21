%% Tutorial 4.3.1 if Statement.2

% Clear the Command Window
clc

% Get user input
%y = input('Enter a number between 1 and 10: ');
y = 12; % hard entry to overide "No input" error

% If y is greater than 10, change its value to 10

if y > 10 | y < 1
    fprintf('The number you entered is outside the range. It will be changed to 10. \n')
    y = 10;
end

y