function result = classify(x)
s = size(x);
if s(1) == 0 || s(2) == 0
    result = -1;
elseif s(1) == 1 && s(2) == 1
    result = 0;
elseif s(1) == 1 || s(2) == 1
    result = 1;
else
    result = 2;
end
end