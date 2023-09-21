% Clear out the workspace
clear

% Generate the vectors to be plotted
for i = 1:11
    x(i) = (1 - i)*(2*pi/10);
    y(i) = sin(x(i));
end

plot(x,y)