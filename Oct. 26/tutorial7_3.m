A=[1 0 2; 2 1 2; 0 2 1];
B=[1 0 1; 1 1 2; 3 3 1]
C1=A+B
C2=A*B
C3=2*C2

A1=[0 1 1; 2 3 1; 1 2 1]
B1=[1 2 2; 1 0 1]
%C2b=A1*B1 (this makes an error
B1=B1'
C2b=A1*B1

A2=[1 2 1; 0 2 0; 2 1 1]
B2=[1 2 3; 4 5 6; 7 8 9]
C4=inv(A2)
D=inv(B2)

detA2=det(A2)
detB2=det(B2)

A3=[1 2 1; 0 1 2]
B3=[1 2 0; 1 1 2]
C=inv(A3*B3')