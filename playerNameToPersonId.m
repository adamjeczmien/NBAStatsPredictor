function retVal = playerNameToPersonId(name, players)
%UNTITLED2 Summary of this function goes here
%Detailed explanation goes here
    maxI=sum(size(players))-1;
    id=0;
    for i=1:maxI
        nameToCheck=[players(i).firstName ' ' players(i).lastName];
        if strcmp(nameToCheck, name)
            id=players(i).personId;
        end
        i=i+1;
    end
retVal=id;
end

 