function out=Spheres(d)

%This function will return the surface area and volume of a given diameter
%of a sphere

out(1,:)=4.*pi.*(d/2).^2;
out(2,:)=(4/3).*pi.*(d/2).^3;