function z_pr = pengrobinson(T, Tc, Pc, R, P)

w = 0.193;
m = 0.37464 + 1.54226*w - 0.26992*(w^2);
Tr = T/Tc;
alpha = [1 + m*(1 - (Tr^0.5))^2];
a = 0.45724*(((R^2)*(Tc^2))/(Pc))*alpha;
b = 0.07780*((R*Tc)/Pc);

root = @(v) (P)*(v^3) + (b*P - R*T)*(v^2) + (a - 3*P*(b^2) - 2*R*T*b)*v + (P*(b^3) + R*T*(b^2) - a*b);
spec_vol = fzero(root,1);
z_pr = (P.*spec_vol)./(R*T)