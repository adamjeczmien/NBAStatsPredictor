function [retVal, correctedNumOfGames]= getFullStatsFromLastGames(year, teamUrl,numOfGames)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[lastGames, numOfGames] =getLastGames(year,teamUrl,numOfGames);
for i=1:numOfGames 
    gameDate=lastGames(i).homeStartDate;
    gameId=lastGames(i).gameId;
    url=strcat('http://data.nba.net/data/10s/prod/v1/',gameDate,'/',gameId,'_boxscore.json');
    filename='boxscore.json';
    boxscoreFile=websave(filename,url);
    data(i) = loadjson(boxscoreFile);
end
if isfield(data, 'x0x5F_internal')
data=rmfield(data,'x0x5F_internal');
end
data=rmfield(data,'previousMatchup');
retVal=data;
correctedNumOfGames=numOfGames;
end

