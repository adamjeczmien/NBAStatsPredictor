function [statsToShow,statsToCalculate] = getStatsForPlayerFromSingleGame(stats, personId, numOfGames)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    dataToShow=[];
    dataToCalculate=[];
    for k=1:numOfGames
        activePlayers=stats(k).stats.activePlayers;
        maxI=sum(size(activePlayers))-1;
        playerNotFound=1;
        for i=1:maxI
           if strcmp(stats(k).stats.activePlayers{1, i}.personId,personId)
               if isfield(stats(k).stats.activePlayers{1, i}, 'firstName')
                       stats(k).stats.activePlayers{1, i} = rmfield(stats(k).stats.activePlayers{1, i},'firstName');
                       stats(k).stats.activePlayers{1, i} = rmfield(stats(k).stats.activePlayers{1, i},'lastName');
                       stats(k).stats.activePlayers{1, i} = rmfield(stats(k).stats.activePlayers{1, i},'jersey');
               end
               statsToPutIn=stats(k).stats.activePlayers{1, i};
               if strcmp(statsToPutIn.min,'0:00')||isempty(statsToPutIn.points)
                   statsToPutIn=createDNPStructure(stats(k));
               else
                   dataToCalculate=[dataToCalculate,stats(k).stats.activePlayers{1, i}];
               end
               playerNotFound=0;  
           end
        end
        if playerNotFound
                   statsToPutIn=createDNPStructure(stats(k));
        end
        [statsToPutIn(:).date] = deal(datetime(stats(k).basicGameData.startDateEastern,'InputFormat','yyyyMMdd'));
        dataToShow=[dataToShow,statsToPutIn];
        
        k=k+1;
    end

    dataToShow=rmfield(dataToShow,'personId');
    dataToShow=rmfield(dataToShow,'teamId');
    dataToShow=rmfield(dataToShow,'isOnCourt');
    dataToShow=rmfield(dataToShow,'pos');
    dataToShow=rmfield(dataToShow,'dnp');
    dataToShow=rmfield(dataToShow,'sortKey');
    dataToShow=rmfield(dataToShow,'fgm');
    dataToShow=rmfield(dataToShow,'fgp');
    dataToShow=rmfield(dataToShow,'fga');
    dataToShow=rmfield(dataToShow,'ftm');
    dataToShow=rmfield(dataToShow,'fta');
    dataToShow=rmfield(dataToShow,'ftp');
    dataToShow=rmfield(dataToShow,'tpm');
    dataToShow=rmfield(dataToShow,'tpa');
    dataToShow=rmfield(dataToShow,'tpp');
    
    if isempty(dataToCalculate)
        dataToCalculate=createDNPStructure(stats(1));
        dataToCalculate=rmfield(dataToCalculate,'personId');
        dataToCalculate=rmfield(dataToCalculate,'teamId');
        dataToCalculate=rmfield(dataToCalculate,'isOnCourt');
        dataToCalculate=rmfield(dataToCalculate,'pos');
        dataToCalculate=rmfield(dataToCalculate,'dnp');
        dataToCalculate=rmfield(dataToCalculate,'sortKey');
        dataToCalculate=rmfield(dataToCalculate,'fgm');
        dataToCalculate=rmfield(dataToCalculate,'fgp');
        dataToCalculate=rmfield(dataToCalculate,'fga');
        dataToCalculate=rmfield(dataToCalculate,'ftm');
        dataToCalculate=rmfield(dataToCalculate,'fta');
        dataToCalculate=rmfield(dataToCalculate,'ftp');
        dataToCalculate=rmfield(dataToCalculate,'tpm');
        dataToCalculate=rmfield(dataToCalculate,'tpa');
        dataToCalculate=rmfield(dataToCalculate,'tpp'); 
    else
    dataToCalculate=rmfield(dataToCalculate,'personId');
    dataToCalculate=rmfield(dataToCalculate,'teamId');
    dataToCalculate=rmfield(dataToCalculate,'isOnCourt');
    dataToCalculate=rmfield(dataToCalculate,'pos');
    dataToCalculate=rmfield(dataToCalculate,'dnp');
    dataToCalculate=rmfield(dataToCalculate,'sortKey');
    dataToCalculate=rmfield(dataToCalculate,'fgm');
    dataToCalculate=rmfield(dataToCalculate,'fgp');
    dataToCalculate=rmfield(dataToCalculate,'fga');
    dataToCalculate=rmfield(dataToCalculate,'ftm');
    dataToCalculate=rmfield(dataToCalculate,'fta');
    dataToCalculate=rmfield(dataToCalculate,'ftp');
    dataToCalculate=rmfield(dataToCalculate,'tpm');
    dataToCalculate=rmfield(dataToCalculate,'tpa');
    dataToCalculate=rmfield(dataToCalculate,'tpp'); 
    end
    statsToShow=dataToShow;
    statsToCalculate=dataToCalculate;
end

