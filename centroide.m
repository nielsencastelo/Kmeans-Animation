% Fun��o que calcula o centroide de um cluster x de dimens�o nx2
% Data: 15/04/2013
% Autor: Nielsen C. Damasceno
% Entrada:      x - s�o os dados
%               classe - as classes
% Sa�da:        centros nx2
function centros = centroide(x,classes)
    
    k = ver_classes(classes);
    centros = zeros(k,size(x,2));
    
    for c = 1:k
        y = x(classes == c,:);
        %centros(c,:) = sum(y)/size(y,1);
        centros(c,:) = mean(y);
    end
end