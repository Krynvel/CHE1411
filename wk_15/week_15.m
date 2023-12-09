%Part A
a=[-6 -2 2; -3 4 -3; 2 4 -7];
b=[15; 13; -9];

y=inv(a)*b

%There is a unique solution x=2.7273, y=2.7727, z=2.0909

a1=rank([a,b])
a2=rank(a)

%Part B

t1=[1 1; 1 -1; 2 -5];
t2=[3; 1; 10];
% 
% y1=inv(t1)*t2
% y2=rank([t1, t2])
% y3=rank(t1)

%A solution does not exist for 1b, the system of equtions is overdfined. There's
%to many equations and too little unkown variables


