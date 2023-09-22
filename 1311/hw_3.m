%9/18/2023 intro to chemical engineering class CHE 1311. Homework
%assignment 3

%problem 3.2

h=3; %units: ft
d=2.75; %ft
v=pi*(h/3)*(d/2)^2; %volume of a cone

waterDensity=1; %g/cm^3
waterDensity=waterDensity*62.43; %lbm/ft^3

waterMass=waterDensity*v; %lbm
waterVolume3_2=v %ft
waterWeight3_2=(waterMass*32.174)/32.174 %lbf


%problem 3.7
hIn=input('Enter a height for the conical tank: ');
dIn=input('Enter the diameter for the conical tank: ');
vIn=pi*(hIn/3)*(dIn/2)^2;
waterVolumet3_7=vIn
waterWeight3_7=(vIn*waterDensity*32.174)/32.174

%problem 3.14
out=conicalWater(d, h);
fprintf('The volume of water and weight of water respectivly are: ');
disp(out);

%Problem 3.20
sphereDiameter=[1 2 3 4 5];
sphereOutput=Spheres(sphereDiameter)

%problem 3.24
matrixIn=[1 2 3 4; 1 2 3 4; 1 2 3 4; 1 2 3 4];
matrixOut=matrixAvg(matrixIn)