function z_pr = pengrobinson(T, Tc, Pc, R)

w = 0.193;
m = 0.37464 + 1.54226*w - 0.26992*(w^2);
Tr = T/Tc;
alpha = [1 + m*(1 - (Tr^0.5))^2];
a = 0.45724*(((R^2)*(Tc^2))/(Pc))*alpha;
b = 0.07780*((R*Tc)/Pc);

for i = 1:31
   P(i) = 1;
   root = @(v) (P(i))*(v^3) + (b*P(i) - R*T)*(v^2) + (a - 3*P(i)*(b^2) - 2*R*T*b)*v + (P(i)*(b^3) + R*T*(b^2) - a*b);
   spec_vol = fzero(root,1);
   z_pr = (P(i).*spec_vol)./(R*T)
end