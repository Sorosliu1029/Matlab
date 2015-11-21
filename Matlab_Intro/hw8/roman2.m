function r = roman2(s)
r = 0;
if ~(isempty(strfind(s, 'D')) && isempty(strfind(s, 'M')) && ...
        isempty(strfind(s, 'IIII')) && isempty(strfind(s, 'VVVV')) && ...
        isempty(strfind(s, 'XXXX')) &&  isempty(strfind(s, 'LLLL')) &&...
        isempty(strfind(s, 'CCCC')) && isempty(strfind(s, 'IVI')) && ...
        isempty(strfind(s, 'IXI')) && isempty(strfind(s, 'XLX')) && ...
        isempty(strfind(s, 'XCX')) && isempty(strfind(s, 'IXV')) && ...
        isempty(strfind(s, 'IXX')) && isempty(strfind(s, 'IXL')) && ...
        isempty(strfind(s, 'IXC')) && isempty(strfind(s, 'IVV')) && ...
        isempty(strfind(s, 'IVX')))
    r = uint16(0);
    return;
end
% I:1, V:5 X:10 L:50 C:100
cc(1).str = 'IV'; cc(1).val = 4;
cc(2).str = 'IX'; cc(2).val = 9;
cc(3).str = 'XL'; cc(3).val = 40;
cc(4).str = 'XC'; cc(4).val = 90;
for i=1:4
    idx = strfind(s, cc(i).str);
    if ~isempty(idx)
        r =  r + cc(i).val;
        s(idx:idx+1) = ['0','0'];
    end
end
idx = strfind(s, 'I');
r = r + 1 * length(idx);
idx = strfind(s, 'V');
r = r + 5 * length(idx);
idx = strfind(s, 'X');
r = r + 10 * length(idx);
idx = strfind(s, 'L');
r = r + 50 * length(idx);
idx = strfind(s, 'C');
r = r + 100 * length(idx);
r = uint16(r);
end