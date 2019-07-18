function teamCalendarFile = getTeamCalendarFile(year,teamUrl)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
    year=num2str(year);
    url=strcat('http://data.nba.net/data/10s/prod/v1/',year,'/teams/',teamUrl,'/schedule.json');
    filename='schedule.json';
    teamCalendarFile=websave(filename,url);
end

