function retVal=ReturnPlayersNames(players)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
maxI=sum(size(players))-1;
data=[];
for i=1:maxI 
    name = string(players(i).firstName);
    surname= string(players(i).lastName);
    fullname= name+" "+surname;
    data=[data,fullname];
end
retVal=data;
end
