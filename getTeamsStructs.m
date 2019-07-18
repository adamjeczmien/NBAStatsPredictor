function retVal = getTeamsStructs(fileName)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
data = loadjson(fileName);
array = data.league.standard;
maxI=(sum(size(array))-1);
teams=[];
for i=1:maxI
    currentTeam=data.league.standard{1,i};
    if currentTeam.isNBAFranchise==1
        teams=[teams, currentTeam];
    end
end
teams = rmfield(teams,'isNBAFranchise');
teams = rmfield(teams,'isAllStar');
retVal=teams;
end

