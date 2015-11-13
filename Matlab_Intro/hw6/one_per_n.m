function n = one_per_n(x)
sum = 0;
for i=1:10000
    sum = sum + 1 / i;
    if sum >= x
        n = i;
        return
    end
end
n = -1;
end