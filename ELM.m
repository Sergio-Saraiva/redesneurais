clear;
clc;

load twomoons.dat;

base = twomoons;
x1 = base(:,1);
x2 = base(:,2);
vet = base(:,1:2);
classe = base(:,3);


hold on;
scatter(x1,x2);

%definição matriz de pesos

[linhas, colunas] = size(vet(:,1:2));%desconsidera a coluna da classficação

sig = input('Defina o desvio padrao dos pesos\n');
W = sig*randn(linhas, colunas);

%acumulo das saidas
u = W*vet';
%plot(u);


%aplicação da formula logistica sigmoid
Z = (1-(exp(-u)))/(1+(exp(-u)));
    
%calculo dos pesos do neuronio de saida
D = classe';
M = D*Z'*(Z*Z')^(-1);

%teste
a = M*Z;


        
        
        
        