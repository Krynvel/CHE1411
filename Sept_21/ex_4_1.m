%Creating a sin and square wave from 0 to 4pi

for i=1:1001
    x(i)=(i-1)*(4*pi/1000);
    ysin(i)=sin(x(i));
    if ysin(i)>0
        ysquare(i)=1;
    elseif ysin(i)<0
        ysquare(i)=-1;
    else
        ysquare(i)=0;
    end
end
plot(x,ysin,x,ysquare)