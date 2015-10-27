function [time, distance] = light_time(m)
distance = m * 1.609;
time = distance / 300000 /60;
end