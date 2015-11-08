function result = older(y1, m1, d1, y2, m2, d2)
p1 = [y1, m1, d1];
p2 = [y2, m2, d2];
diff = p1 - p2;
if diff(1) > 0 || (diff(1) == 0 && diff(2) > 0) || (diff(1) == 0 && diff(2) == 0 && diff(3) > 0)
    result = -1;
elseif diff == [0, 0, 0]
    result = 0;
else
    result = 1;
end
end