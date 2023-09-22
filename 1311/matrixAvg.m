function out=matrixAvg(in)

%This matrix will take a 4x4 and find the average accross the main diagnol

add=in(1,1)+in(2,2)+in(3,3)+in(4,4);
out=add/4;