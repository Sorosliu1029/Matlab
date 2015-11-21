function days = June2015()
days = [];
weekdays = {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'};
for i = 1:30
    day = {'June', i, char(weekdays(mod(i-1, 7)+1))};
    days = [days; day];
end
end