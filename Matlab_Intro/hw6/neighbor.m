function result = neighbor(v)
v_size = size(v);
result = ones(1, v_size(2)-1);
if v_size(1) ~= 1 || v_size(2) < 2
    result = [];
else
    for i = 1:v_size(2)-1
        result(i) = abs(v(i+1) - v(i));
    end
end
end