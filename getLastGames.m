function [retVal, correctedNumOfGames] = getLastGames(year,teamUrl,numOfGames)
%UNTITLED17 Summary of this function goes here
%   Detailed explanation goes here
calendarFile=getTeamCalendarFile(year,teamUrl);
calendarStruct=getTeamCalendarStruct(calendarFile);
%lastGamePlayedIndex = calendarStruct.lastStandardGamePlayedIndex+1;
lastGamePlayedIndex = calendarStruct.lastStandardGamePlayedIndex;
if numOfGames<lastGamePlayedIndex
    firstGamePlayedIndex=lastGamePlayedIndex-numOfGames+1;
    correctedNumOfGames=numOfGames;
else 
    firstGamePlayedIndex=1;
    correctedNumOfGames=lastGamePlayedIndex;
end
games=[];
for i=firstGamePlayedIndex:lastGamePlayedIndex
    gameToAdd =calendarStruct.standard{1,i};
    if isfield(gameToAdd, 'playoffs')
        gameToAdd = rmfield(gameToAdd,'playoffs');
    end
    gameToAdd = rmfield(gameToAdd,'watch');
    gameToAdd = rmfield(gameToAdd,'nugget');
    gameToAdd = rmfield(gameToAdd,'visitorStartDate');
    gameToAdd = rmfield(gameToAdd,'visitorStartTime');
    gameToAdd = rmfield(gameToAdd,'seasonStageId');
    gameToAdd = rmfield(gameToAdd,'statusNum');
    gameToAdd = rmfield(gameToAdd,'extendedStatusNum');
    gameToAdd = rmfield(gameToAdd,'startTimeUTC');
    gameToAdd = rmfield(gameToAdd,'startDateEastern');
    games=[games,gameToAdd];
end

retVal=games;
end

