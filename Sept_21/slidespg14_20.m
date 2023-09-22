%% Chapter 4 - Part 1 Flow Charts and Loops PPT Examples
%% Slide 14

y = 0;
for k = 1:5
    y = y + k;
end 
y

%% Slide 15

y = 0;
for k = 2:2:8
    y = y + k;
end
y

%% Slide 16

for k = 1:5
    y(k) = k^2;
end
y

%% Slide 17

for j = 1:3
    for k = 1:3
        T(j,k) = j*k;
    end
end
T

%% Slide 18-20
clc;clear
for i = 1:21
    x(i) = -10 + (i-1);
    y(i) = 2^(0.4*x(i)) + 5;
end

plot(x,y)