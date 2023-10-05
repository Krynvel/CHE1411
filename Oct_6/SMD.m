%% Example 5.3

% SMD.m: Plots displacement of under damped spring-mass-damper system

% Inputs: 
y0 = 3.0; % initial displacement, inches
dr = 0.10; % damping ratio
fr = 2*pi; % natural frequency, radians/second
T = 5.0; % total time to be plotted, seconds
N = 100; % number of time intervals to be plotted

% Calculate damped frequency, radians/second 
fd = fr*sqrt(1-dr^2);

% Calculate time interval for displacement calculations 
tinc = T/N;

for i = 1:N+1
    t(i) = (i-1)*tinc;
    c = cos(fd*t(i));
    s = sin(fd*t(i));
    e = exp(-dr*fr*t(i));
    y(i) = (y0*c + y0*dr*fr/fd*s)*e;
end
figure
plot(t,y,'LineWidth',3,'Color','Red')
grid on
title('Response of Spring-Mass-Damper System','FontSize',20)
xlabel('Time, seconds','FontSize',16)
ylabel('Displacement, inches','FontSize',16)
%% Example 5.4

% SMD.m: Plots displacement of under damped spring-mass-damper system

% Inputs: 
y0 = 3.0; % initial displacement, inches
dr = 0.10; % damping ratio
fr = 2*pi; % natural frequency, radians/second
T = 5.0; % total time to be plotted, seconds
N = 100; % number of time intervals to be plotted

% Calculate damped frequency, radians/second 
fd = fr*sqrt(1-dr^2);

% Calculate time interval for displacement calculations 
tinc = T/N;

for i = 1:N+1
    t(i) = (i-1)*tinc;
    c = cos(fd*t(i));
    s = sin(fd*t(i));
    e = exp(-dr*fr*t(i));
    y(i) = (y0*c + y0*dr*fr/fd*s)*e;
end
figure
plot(t,y,'LineWidth',3,'Color','Red')
grid on
title('Response of Spring-Mass-Damper System','FontSize',20)
xlabel('Time, seconds','FontSize',16)
ylabel('Displacement, inches','FontSize',16)

% Compute and plot displacements for a different damping ratio

dr2 = 0.20; % new damping ratio

% Calculate new damped frequency fd
fd2 = fr*sqrt(1-dr2^2);

for i = 1:N+1
    c = cos(fd2*t(i));
    s = sin(fd2*t(i));
    e = exp(-dr2*fr*t(i));
    y2(i) = (y0*c + y0*dr2*fr/fd2*s)*e;
end
hold on
plot(t,y2,'LineWidth',3,'LineStyle',':','Color','Blue')
legend('Damping Ratio = 0.1','Damping Ratio = 0.2')

%% Example 5.4 Function displace & displace2 section

out = displace(2)
out2 = displace2(3,.1,2*pi,2)

figure
fplot(@(t)displace2(3,.1,2*pi,t),[0 5])
hold on
fplot(@(t)displace2(3,.2,2*pi,t),[0 5])