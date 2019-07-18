function retVal=ReturnPlayersIds(players)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
maxI=sum(size(players))-1;
data=[];
for i=1:maxI 
    str = str2num(players(i).personId);
    data=[data,str];
end
retVal=data;
end
