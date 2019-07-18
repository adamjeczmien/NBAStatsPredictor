function plotPredictedStats(fittings)
%**************************************************************************

%pts
bestFitPoints=fittings{1};
plotSlice(bestFitPoints)
title('Points')
xlabel('Number of games')
ylabel('Points')

%offReb
bestFitoffReb=fittings{2};
plotSlice(bestFitoffReb)
title('Offensive Rebounds')
xlabel('Number of games')
ylabel('Rebs')

%defRed
bestFitdefReb=fittings{3};
plotSlice(bestFitdefReb)
title('Defensive Rebounds')
xlabel('Number of games')
ylabel('Rebs')

%assists
bestFitAssists=fittings{4};
plotSlice(bestFitAssists)
title('Assists')
xlabel('Number of games')
ylabel('Assists')

%steals
bestFitSteals=fittings{5};
plotSlice(bestFitSteals)
title('Steals')
xlabel('Number of games')
ylabel('Steals')

%To
bestFitTurnovers=fittings{6};
plotSlice(bestFitTurnovers)
title('Turnovers')
xlabel('Number of games')
ylabel('TO')

%blc
bestFitBlocks=fittings{7};
plotSlice(bestFitBlocks)
title('Blocks')
xlabel('Number of games')
ylabel('Blocks')
end