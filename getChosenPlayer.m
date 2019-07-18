function retVal = getChosenPlayer(personId, players)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    maxI=sum(size(players))-1;
    id=0;
    for i=1:maxI
        if str2num(players(i).personId)==personId
            chosenPlayer=players(i);
        end
    end
    chosenPlayer=rmfield(chosenPlayer,'heightFeet');
    chosenPlayer=rmfield(chosenPlayer,'heightInches');
    chosenPlayer=rmfield(chosenPlayer,'weightPounds');
    chosenPlayer=rmfield(chosenPlayer,'nbaDebutYear');
    retVal=chosenPlayer;
end

