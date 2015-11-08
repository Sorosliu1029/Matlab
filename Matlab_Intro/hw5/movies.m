function result = movies(hr1, min1, durmin1, hr2, min2, durmin2)
srt1 = [hr1, min1];
srt2 = [hr2, min2];
diff = srt2 - srt1;
mins = diff(1) * 60+ diff(2);
if mins < durmin1 || mins > durmin1 + 30
    result = false;
else
    result = true;
end
end