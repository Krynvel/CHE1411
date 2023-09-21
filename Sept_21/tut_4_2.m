% %This a loop command tutorial 4.2 part 1
% 
% a=0;
% for m=1:10
%     m
%     a-a+m
%     pause
% end
% a

%This is part 2 of the tutorial

% clear
% for l=1:1000
%     x(l)=(l-1)*(2*pi/1000);
%     y(l)=sin(x(l));
% end
% 
% plot(x,y, 'LineWidth',2)
% 
% 
% 


clc;clear
%Part 3 of the tutorial

m=0;
a=0;
b=150;
while a<100 & b >=50
    m=m+1
    a=a+m
    b=b-10
    pause
end
