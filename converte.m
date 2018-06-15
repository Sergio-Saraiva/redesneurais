function [Xd, Yd] = converte(X, Y, tamPop)
    for i=1:tamPop
        Xd(i) = ((bi2de(X(i,:))))*20/1023;
        Yd(i) = ((bi2de(Y(i,:)))*20)/1023;
    end