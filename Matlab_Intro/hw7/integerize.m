function result = integerize(A)
m = max(A(:));
m = ceil(m);
if m < 2 ^ 8
    result = 'uint8';
elseif m < 2 ^ 16
    result = 'uint16';
elseif m < 2 ^ 32
    result = 'uint32';
elseif m < 2 ^ 64
    result = 'uint64';
else
    result = 'NONE';
end
end
    