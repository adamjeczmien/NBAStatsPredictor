function [teamsFile,playersFile]=downloadFiles(year)
    year=num2str(year);
    url=strcat('http://data.nba.net/data/10s/prod/v1/',year,'/teams.json');
    filename='teams.json';
    teamsFile=websave(filename,url);
    url=strcat('http://data.nba.net/data/10s/prod/v1/',year,'/players.json');
    filename='players.json';
    playersFile = websave(filename,url);
end