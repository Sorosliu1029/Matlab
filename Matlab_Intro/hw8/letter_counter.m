function cnt = letter_counter(filename)
fid = fopen(filename, 'rt');
if fid < 0
    cnt = -1;
    return;
end
txt = fread(fid, inf, 'char');
cnt = 0;
for i=1:length(txt)
    if isletter(char(txt(i)))
        cnt = cnt + 1;
    end
end
end