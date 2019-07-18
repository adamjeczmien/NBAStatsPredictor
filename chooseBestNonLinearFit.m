%Wczesniejsza dzia³ajaca wersja choosebestfit
function retVal = chooseBestNonLinearFit(dataToFit)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
numOfGames=(sum(size(dataToFit))-1);
games=linspace(1,numOfGames,numOfGames);
formula='y~x1';
bestFit=LinearModel.fit(games,dataToFit,formula);
error=0;
for i=1:round(numOfGames/5)
    error=error+abs(bestFit.Fitted(numOfGames-(i-1))-dataToFit(numOfGames-(i-1)));
end
maxpolydegree=5;
polydegree=round(numOfGames/5);
maxI=min(maxpolydegree,polydegree);
for i=1:maxI
    formula=strcat(formula,'+x1^',num2str(i));
    newFit=LinearModel.fit(games,dataToFit,formula);
    newError=0;
    for j=1:round(numOfGames/5)
    newError=newError+abs(newFit.Fitted(numOfGames-(j-1))-dataToFit(numOfGames-(j-1)));
    end
    if newError<error
        bestFit=newFit;
        error=newError;
    end
end
retVal=bestFit;
end

