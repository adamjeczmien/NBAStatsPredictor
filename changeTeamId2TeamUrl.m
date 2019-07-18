function retVal = changeTeamId2TeamUrl(teamId,teams)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
maxI=sum(size(teams))-1;

for i=1:maxI
    if str2num(teams(i).teamId)==teamId
        url=teams(i).teamId;
    end
    i=i+1;
end
retVal=url;
end

