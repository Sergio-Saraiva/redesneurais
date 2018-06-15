clear;
clc;

%geração da população incial
numI = input('Digite o numero de individuos desejado\n');

for i=1:numI
    for j=1:20
    b = randi(2);
        if(b == 1)
            popI(i,j) = 1;
        end
        if(b == 2)
            popI(i, j) = 0;
        end
    end
end


[tamPop, ~] = size(popI);

numEpocas = input('Insira a quantidade de epocas\n');

for epoca=0:numEpocas
    %separa populacao
    X = popI(:,1:10);
    Y = popI(:,11:20);
   
    %converte para decimal
    [Xd, Yd] = converte(X, Y, tamPop+epoca);
   
    %avalia cada individuo
    notaI = avalia(Xd, Yd, tamPop+epoca);

    %roleta
    pai1 = roleta(notaI, tamPop+epoca);
    pai2 = roleta(notaI, tamPop+epoca);

    %cruzamento
    filho1(1,1:10) = X(pai1,:);
    filho1(1,11:20) = Y(pai2,:);

    filho2(1,1:10) = X(pai2,:);
    filho2(1,11:20) = Y(pai1,:);
   
    %mutação
    [filho1, filho2] = mutacao(filho1, filho2);
    
    %reinsere o filho na população
    popI(tamPop+epoca,:) = filho1;
    popI(tamPop+epoca+1,:) = filho2;
   
    %[res1, res2] = converte(filho1, filho2, 1);
end
[~, tam] = size(Xd);
 disp(Xd(:,tam));
 disp(Yd(:,tam));





