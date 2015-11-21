function result = roman(s)
c = {'I', 'II', 'III', 'IV', 'V' , 'VI', 'VII', 'VIII', 'IX', 'X', ...
    'XI', 'XII', 'XIII', 'XIV', 'XV', 'XVI', 'XVII', 'XVIII', 'XIX', 'XX'};
for i =1:20
    if strcmp(s, c{i})
        result = uint8(i);
        return
    end
end
result = uint8(0);
end