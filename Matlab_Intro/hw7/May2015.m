function days = May2015()
days = [];
weekdays = {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'};
for i = 1:31
    r.month = 'May';
    r.date = i;
    r.day = char(weekdays(mod(i+3, 7)+1));
    days = [days, r];
end
end