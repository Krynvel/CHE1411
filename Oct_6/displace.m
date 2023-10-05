%% Example 5.4

function y = displace(t)

y0 = 3.0;
dr = 0.10;
fr = 2*pi;
fd = fr*sqrt(1-dr^2);
c = cos(fd*t);
s = sin(fd*t);
e = exp(-dr*fr*t);
y = (y0*c + y0*dr*fr/fd*s)*e;
