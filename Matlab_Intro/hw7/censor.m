function result = censor(v, s)
result = [];
for i=1:length(v)
    if isempty(strfind(v{i}, s))
        result = [result, v(i)];
    end
end
end
        