function retVal = getPlayersStructs(fileName)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
data = loadjson(fileName);
array = data.league.standard;
maxI=(sum(size(array))-1);
players=[];
for i=1:maxI
    currentPlayer=data.league.standard{1,i};
    if currentPlayer.isActive==1
        players=[players, currentPlayer];
    end
end
players = rmfield(players,'isActive');
players = rmfield(players,'temporaryDisplayName');
players = rmfield(players,'teams');
players = rmfield(players,'draft');
players = rmfield(players,'yearsPro');
players = rmfield(players,'collegeName');
players = rmfield(players,'lastAffiliation');
retVal=players;
end

