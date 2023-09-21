N=input("How much Money");
Money=1000;
Year=1;

while Money < N
    Money=Money*1.05;
    Year=Year+1;
end
display (Year);