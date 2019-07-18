function calendarStruct = getTeamCalendarStruct(scheduleFileName)
%UNTITLED15 Summary of this function goes here
%   Detailed explanation goes here
    data = loadjson(scheduleFileName);
    data = data.league;
    calendarStruct=data;
end

