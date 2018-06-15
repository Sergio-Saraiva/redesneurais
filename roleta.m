function posicao = roleta(notaI, tamPop)

somaNotas = sum(notaI);
for i=1:tamPop
    p(i) = notaI(i)/(mean(somaNotas));
end

i = 1;
soma = p(i);
sorteia = rand(1);  

while(soma<sorteia)
    i = i+1;
    soma = soma + p(i);
end

posicao = i;

    