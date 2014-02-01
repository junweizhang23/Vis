%unit random walk uniform probablity 1/4;
%index 1 ====> x coordinate
%index 2 ====> y coordinate
%According to the coordiante of x y the origin is left bottom;

function [M] = unitrandromwalk2D(M,start,width,height)

index = start;

while index(1) ~= 1 & index(1) ~=width & index(2) ~= 1 & index(2) ~= height
    temp = rand;
    %right
    if temp >= 0 & temp <= 0.25
        index(1)= index(1)+1;
        index(2)= index(2);
    end
    %up
    if temp <0.25 & temp <= 0.5
        index(1) = index(1);
        index(2)= index(2)+1;
    end
    %left
    if temp >0.5 & temp <= 0.75
        index(1) = index(1)-1;
        index(2) = index(2);
    end
    %down
    if temp >0.75 & temp <= 1
        index(1) = index(1);
        index(2) = index(2)-1;
    end
end

if index(1) == 1 || index(1) == width || index(2) == 1 || index(2) == height
    M(index(1),index(2)) = M(index(1),index(2))+1;
end







