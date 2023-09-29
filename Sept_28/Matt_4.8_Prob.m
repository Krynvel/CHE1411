%problem 4.8
clc;clear
g=32.2; %ft/s^2
v=200; %ft/s
theta=20; %deg
t1=0;
h=0;
for t=1:100
    if h>=0
    h(t)=v*t1*sind(theta)-0.5*g*t1^2;
    x(t)=v*t1*cosd(theta);
    t2(t)=t1;
    t1=t1+0.1;
    end
end
hold on
plot(t2,h)
title('Time(s) vs. Height(ft)')
xlabel('Time(s)')
ylabel('Height(ft)')
figure
plot(t2,x)
title('Time(s) vs. Distance (ft)')
xlabel('Time(s)')
ylabel('Distance(ft)')
figure
plot(x,h)
title('Distance(ft) vs Height(ft)')
xlabel('Distance(ft)')
ylabel('Height(ft)')
