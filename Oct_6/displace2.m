function y = displace2(y0, dr, fr, t)

fd = fr*sqrt(1-dr^2);
c = cos(fd*t);
s = sin(fd*t);
e = exp(-dr*fr*t);
y = (y0*c + y0*dr*fr/fd*s)*e;