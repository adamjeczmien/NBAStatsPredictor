function [newFormula,beta] = addToTheFormula(previousFormula,iteracion,functionType)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    switch functionType
        case "Linear"
            newFormula=strcat(previousFormula,'b',num2str(iteracion),'*x1');
            beta=ones(1,iteracion);
        case "Polynomial"
            newFormula=strcat(previousFormula,'b',num2str(iteracion),'*x1^',num2str(iteracion));
            beta=ones(1,iteracion);
        case "Logarithmic"
            newFormula=strcat(previousFormula,'b',num2str(iteracion),'*log(x1)');
            beta=ones(1,iteracion);
        case "Exponencial"
            newFormula=strcat(previousFormula,'b',num2str(iteracion),'*exp(x1)');
            beta=ones(1,iteracion);
    end
end

