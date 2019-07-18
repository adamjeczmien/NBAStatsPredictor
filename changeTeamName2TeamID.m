function retVal = changeTeamName2TeamID(name,teams)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
maxI=sum(size(teams))-1;
id=0;
for i=1:maxI
    if strcmp(teams(i).fullName, name)
        id=teams(i).teamId;
    end
    i=i+1;
end
retVal=id;
end

