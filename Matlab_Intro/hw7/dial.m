function out = dial(in)
out = in;
legal = ['A':'P', 'R':'Y', '0':'9','#* ()-'];
m = ismember(in, legal);
if ~all(m)
    out = [];
    return
end
idx = find(in=='('|in==')'|in=='-');
if ~isempty(idx)
    out(idx) = ' ';
end
dials = {'', 'ABC', 'DEF', 'GHI', 'JKL', 'MNO', 'PRS', 'TUV', 'WXY'};
for i = 2:9
    d = char(dials(i));
    idx = find(in==d(1)|in==d(2)|in==d(3));
    if ~isempty(idx)
        out(idx) = num2str(i);
    end
end
end