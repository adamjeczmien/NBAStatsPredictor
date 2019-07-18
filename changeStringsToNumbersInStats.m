function retVal = changeStringsToNumbersInStats(stats)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
maxI=sum(size(stats))-1;
for i=1:maxI
     stats(i).points=str2num(stats(i).points);
     stats(i).offReb=str2num(stats(i).offReb);
     stats(i).defReb=str2num(stats(i).defReb);
     stats(i).totReb=str2num(stats(i).totReb);
     stats(i).assists=str2num(stats(i).assists);
     stats(i).pFouls=str2num(stats(i).pFouls);
     stats(i).steals=str2num(stats(i).steals);
     stats(i).turnovers=str2num(stats(i).turnovers);
     stats(i).blocks=str2num(stats(i).blocks);
     stats(i).plusMinus=str2num(stats(i).plusMinus);
     if isfield(stats(i), 'date')    
        stats(i).date=datestr(stats(i).date);
     end
end
    retVal=stats;
end

