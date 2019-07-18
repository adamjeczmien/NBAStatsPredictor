function retVal = chooseBestFit(dataToFit,functionType)

numOfGames=(sum(size(dataToFit))-1);
games=linspace(1,numOfGames,numOfGames);
formula='y~b1*x1';
bestFit=NonLinearModel.fit(games,dataToFit,formula,[1]);
formula='y~';
error=0;
for i=1:round(numOfGames/5)
    error=error+abs(bestFit.Fitted(numOfGames-(i-1))-dataToFit(numOfGames-(i-1)));
end
maxpolydegree=5;
polydegree=round(numOfGames/5);
maxI=min(maxpolydegree,polydegree);
for i=1:maxI
    [formula,beta]=addToTheFormula(formula,i,functionType);
    newFit=NonLinearModel.fit(games,dataToFit,formula,beta);
    formula=strcat(formula,'+');
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