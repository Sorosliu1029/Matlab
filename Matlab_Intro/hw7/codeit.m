function coded = codeit(txt)
coded = txt;
lowaz = 'a':'z';
upaz = 'A':'Z';
lowza = fliplr(lowaz);
upza = fliplr(upaz);
for i = 1:26
    idx = find(txt==lowaz(i));
    if ~isempty(idx)
        coded(idx) = lowza(i);
        txt(idx) = '0';
    end
    idx = find(txt==upaz(i));
    if ~isempty(idx)
        coded(idx) = upza(i);
        txt(idx) = '0';
    end
end
end
        