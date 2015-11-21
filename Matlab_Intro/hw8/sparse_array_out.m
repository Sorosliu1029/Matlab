function opensuccess = sparse_array_out(A, filename)
fid = fopen(filename, 'w+');
if fid < 0
    opensuccess = false;
    return
end
opensuccess = true;
s = size(A);
no_zero_num = sum(A(:) ~= 0);
fwrite(fid, [s, no_zero_num], 'uint32');
for i=1:s(1)
    for j=1:s(2)
        if A(i,j) ~= 0
            fwrite(fid, [i, j], 'uint32');
            fwrite(fid, A(i,j), 'double');
        end
    end
end
fclose(fid);
end