function AP =area_perm(Dimensions)

%This function cmputes area and permiter for a rectangle defined by a base
%and height, area is the first variable and permeter is the second variable
%in the matrix

AP(1)=Dimensions(1)*Dimensions(2);
AP(2)= 2*Dimensions(1)+2*Dimensions(2);