function predictStatsWithplotSlicesNonLin(previousStats)
%**************************************************************************
points=vertcat(previousStats.points);
offReb=vertcat(previousStats.offReb);
defReb=vertcat(previousStats.defReb);
assists=vertcat(previousStats.assists);
steals=vertcat(previousStats.steals);
turnovers=vertcat(previousStats.turnovers);
blocks=vertcat(previousStats.blocks);

%pts
bestFitPoints=chooseBestFit(points);
plotSlice(bestFitPoints)
title('Points')
xlabel('Number of games')
ylabel('Points')

%offfReb
bestFitoffReb=chooseBestFit(offReb);
plotSlice(bestFitoffReb)
title('Offensive Rebounds')
xlabel('Number of games')
ylabel('Rebs')

%defRed
bestFitdefReb=chooseBestFit(defReb);
plotSlice(bestFitdefReb)
title('Defensive Rebounds')
xlabel('Number of games')
ylabel('Rebs')

%assists
bestFitAssists=chooseBestFit(assists);
plotSlice(bestFitAssists)
title('Assists')
xlabel('Number of games')
ylabel('Assists')

%steals
bestFitSteals=chooseBestFit(steals);
plotSlice(bestFitSteals)
title('Steals')
xlabel('Number of games')
ylabel('Steals')

%To
bestFitTurnovers=chooseBestFit(turnovers);
plotSlice(bestFitTurnovers)
title('Turnovers')
xlabel('Number of games')
ylabel('TO')

%blc
bestFitBlocks=chooseBestFit(blocks);
plotSlice(bestFitBlocks)
title('Blocks')
xlabel('Number of games')
ylabel('Blocks')
end
