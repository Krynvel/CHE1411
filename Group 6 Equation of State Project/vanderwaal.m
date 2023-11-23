function z_vdw = vanderwaal(T, Tc, Pc, R, P)

a = 0.42188*(((R^2)*(Tc^2))/(Pc));
b = 0.125*((R*Tc)/Pc);
% vol = (P)*(v^3) - (P*b + R*T)*(v^2) + (a)*v - a*b;
vol = [P -(P*b + R*T) a -a*b];

spec_vol = roots(vol);

z_vdw = (P*spec_vol)/R*T
