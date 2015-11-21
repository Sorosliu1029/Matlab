function result = sparse_array_in(filename)
fid = fopen(filename, 'r');
if fid < 0
    result = [];
    return;
end
s = fread(fid, 3, 'uint32');
result = zeros(s(1), s(2));
for i = 1:s(3)
    idx = fread(fid, 2, 'uint32');
    e = fread(fid, 1, 'double');
    result(idx(1), idx(2)) = e;
end
fclose(fid);
end
