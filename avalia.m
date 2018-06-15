function [notaI] = avalia(Xd, Yd, tamPop)
    for i=1:tamPop
        notaI(i) = abs((Xd(i)*(sin(Yd(i))*(pi/4))) + (Yd(i)*(sin(Xd(i))*(pi/4))));
    end