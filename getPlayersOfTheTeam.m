function retVal = getPlayersOfTheTeam(teamID,players)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
maxI=sum(size(players))-1;
teamPlayers=[];
for i=1:maxI
    if isempty(players(i).teamId)
        players(i).teamId='0';
    end 
    if str2num(players(i).teamId) == teamID
        teamPlayers=[teamPlayers, players(i)];
    end
end
retVal=teamPlayers;
end

