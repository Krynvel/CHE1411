clc;clear;

y=input('Enter a number less than or equal to 10: ');

if y>10 | y<1
fprintf('The number you entered is outside of the range it will be changed.')
    if y > 15
        fprintf('The number is too high. The porgram is terminating\n')
    end

elseif y>10
            fprint('The number is slighty too high it will be changed to 10.\n')
            y=10
elseif y==10
    fprintf('The number is at the upper limit.\n')
elseif y<1
        y=1;
        fprintf('It will be changed to 1')
else
    fprintf('The number is within the range\n')
end
y