function retVal=ReturnAllTeamsNames(teams)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
maxI=sum(size(teams))-1;
data=[];
for i=1:maxI 
    str = string(teams(i).fullName);
    data=[data,str];
end
retVal=data;
end

