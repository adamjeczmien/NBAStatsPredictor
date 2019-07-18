function retVal = predictStatsWithNonLinearReg(previousStats)
%**************************************************************************
points=vertcat(previousStats.points);
offReb=vertcat(previousStats.offReb);
defReb=vertcat(previousStats.defReb);
assists=vertcat(previousStats.assists);
steals=vertcat(previousStats.steals);
turnovers=vertcat(previousStats.turnovers);
blocks=vertcat(previousStats.blocks);

predictedStats=previousStats(1);
predictedStats=rmfield(predictedStats,'min');
predictedStats=rmfield(predictedStats,'plusMinus');
%pts
bestFitPoints=chooseBestNonLinearFit(points);
pointsPrediction=predict(bestFitPoints,sum(size(points)));
if pointsPrediction>=0
    predictedStats.points=round(pointsPrediction);
else
    predictedStats.points=0;
end
%offfReb
bestFitoffReb=chooseBestNonLinearFit(offReb);
offRebPrediction=predict(bestFitoffReb,sum(size(offReb)));
if offRebPrediction>=0
   predictedStats.offReb=round(offRebPrediction);
else
    predictedStats.offReb=0;
end

%defRed
bestFitdefReb=chooseBestNonLinearFit(defReb);
defRebPrediction=predict(bestFitdefReb,sum(size(defReb)));
if defRebPrediction>=0
   predictedStats.defReb=round(defRebPrediction);
else
    predictedStats.defReb=0;
end

%totReb
predictedStats.totReb=predictedStats.defReb+predictedStats.offReb;

%assists
bestFitAssists=chooseBestNonLinearFit(assists);
assistsPrediction=predict(bestFitAssists,sum(size(assists)));
if assistsPrediction>=0
   predictedStats.assists=round(assistsPrediction);
else
    predictedStats.assists=0;
end

%steals
bestFitSteals=chooseBestNonLinearFit(steals);
stealsPrediction=predict(bestFitSteals,sum(size(steals)));
if stealsPrediction>=0
   predictedStats.steals=round(stealsPrediction);
else
    predictedStats.steals=0;
end
%To
bestFitTurnovers=chooseBestNonLinearFit(turnovers);
turnoversPrediction=predict(bestFitTurnovers,sum(size(turnovers)));
if turnoversPrediction>=0
   predictedStats.turnovers=round(turnoversPrediction);
else
    predictedStats.turnovers=0;
end
%blc
bestFitBlocks=chooseBestNonLinearFit(blocks);
blocksPrediction=predict(bestFitBlocks,sum(size(blocks)));
if blocksPrediction>=0
    predictedStats.blocks=round(blocksPrediction);
else
    predictedStats.blocks=0;
end
retVal=predictedStats;
end
