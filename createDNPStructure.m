function retVal = createDNPStructure(stats)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
data=stats(1).stats.activePlayers{1,1};
if isfield(data, 'firstName')
	data = rmfield(data,'firstName');
	data = rmfield(data,'lastName');
 	data = rmfield(data,'jersey');
end
data.points='0';
data.min='DNP';
data.fgm = '0';
data.fga = '0';
data.fgp = '0';
data.ftm = '0';
data.fta = '0';
data.ftp = '0';
data.tpm = '0';
data.tpa = '0';
data.tpp = '0';
data.offReb = '0';
data.defReb = '0';
data.totReb = '0';
data.assists = '0';
data.pFouls = '0';
data.turnovers = '0';
data.blocks = '0';
data.plusMinus = '0';
data.steals = '0';
data.assists = '0';
retVal=data;
end

