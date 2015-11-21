function result = replace(v, c1, c2)
result = v;
for i=1:length(v)
    c = char(v(i));
    idx = find(c==c1);
    if ~isempty(idx)
        c(idx) = c2;
    end
    result(i) = {c};
end
end
       