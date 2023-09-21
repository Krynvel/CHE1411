%% Example 3.8
% Define the base/height array
Dims=[6.5 2.1; 7.2 3; 7.5 3.3];
% Compute area and perimeter of Rectangle 1,
% and store them in the first rows of Props
Props(1,:)=area_perm(Dims(1,:));
%Repeat for Rectangle 2, and store in second row
Props(2,:)=area_perm(Dims(2,:));
%Repeat for Rectangle 3
Props(3,:)=area_perm(Dims(3,:));
%Output results
Props
