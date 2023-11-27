function z_rk = redlichkwong(T, Tc, Pc, R, P)

Tr = T/Tc;
alpha = (1/(Tr^0.5));
a = 0.42748*(((R^2)*(Tc^2))/(Pc))*alpha;
b = 0.08664*((R*Tc)/Pc);

root = @(v) (P)*v^3 - (R*T)*v^2 + (a - P*(b^2) - R*T*b)*v - a*b;
spec_vol = fzero(root,1);
z_rk = (P.*spec_vol)./(R*T)