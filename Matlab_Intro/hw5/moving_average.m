function result = moving_average(x)
persistent avg;
persistent cnt;
if isempty(avg)
    avg = zeros(1, 25);
end
if isempty(cnt)
    cnt = 0;
end
avg(2:25) = avg(1:24);
avg(1) = x;
if cnt >= 25
    result = mean(avg);
else
    cnt = cnt + 1;
    result = sum(avg) / cnt;
end
end