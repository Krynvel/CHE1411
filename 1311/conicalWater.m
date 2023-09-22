function out=conicalWater(d, h)

v=pi*(h/3)*(d/2)^2; %volume of a cone

waterDensity=1; %g/cm^3
waterDensity=waterDensity*62.43; %lbm/ft^3

waterMass=waterDensity*v; %lbm
out(1)=v; %ft
out(2)=(waterMass*32.174)/32.174; %lbf
