function [filho1, filho2] = mutacao(filho1, filho2)
    [~, tam] = size(filho1);
    
    mut = randi(tam);
    
    if(filho1(:,mut) == 1)
        filho1(:, mut) = 0;
    end
    if(filho1(:,mut) == 0)
        filho1(:, mut) = 1;
    end
    if(filho2(:,mut) == 1)
        filho1(:, mut) = 0;
    end
    if(filho1(:,mut) == 0)
        filho1(:, mut) = 1;
    end