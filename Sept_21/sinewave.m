%% Tutorial 4.2.1 for Loop (sinewave)

% Clear out the workspace
clear

% Generate the vectors to be plotted
for i = 1:1001
    x(i) = (1 - i)*(2*pi/1000);
    y(i) = sin(x(i));
end

plot(x,y,'LineWidth',2)
grid on