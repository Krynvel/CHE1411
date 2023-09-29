v = 200;
theta = 20; 
t = 0:0.1:10;
g = 32.2;

h = v.*t.*(sind(theta))-(1/2).*g.*t.^2;
x = v.*t.*(cosd(theta));


%%
figure(1)
subplot(3,1,1)
plot(t,h);
title('Time vs. Height')
xlabel 'Time';
ylabel 'Height';

hold on
subplot(3,1,2)
plot(t,x);
title('Time vs. Distance')
xlabel 'Time';
ylabel 'Distance';

hold on
subplot(3,1,3)
plot(x,h);
title('Distance vs. Height')
xlabel 'Distance';
ylabel 'Height';