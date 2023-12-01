function z_vdw = vanderwaal(T, Tc, Pc, R)

a = 0.42188*(((R^2)*(Tc^2))/(Pc));
b = 0.125*((R*Tc)/Pc);

for i = 1:31
   P(i) = 1;
   root = @(v) (P(i))*(v^3) - (P(i)*b + R*T)*(v^2) + (a)*v - a*b;
   spec_vol = fzero(root,1);
   z_vdw = (P(i).*spec_vol)./(R*T)
end
