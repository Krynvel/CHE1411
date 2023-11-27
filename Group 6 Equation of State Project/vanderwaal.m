function z_vdw = vanderwaal(T, Tc, Pc, R, P)

a = 0.42188*(((R^2)*(Tc^2))/(Pc));
b = 0.125*((R*Tc)/Pc);

root = @(v) (P)*(v^3) - (P*b + R*T)*(v^2) + (a)*v - a*b;
spec_vol = fzero(root,1);
z_vdw = (P.*spec_vol)./(R*T)
