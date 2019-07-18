function displayPlayers(players)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
maxI=sum(size(players))-1;
for i=1:maxI
    str=[players(i).firstName ' ' players(i).lastName];
    disp(str)
end
end

