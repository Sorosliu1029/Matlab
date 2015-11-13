function w = replace_me(v,a,b,c)
if nargin < 3, b = 0; end
if nargin < 4, c = b; end
w = [];
j = 1;
for i=1:length(v)
    if v(i) == a
        w(j:j+1) = [b c];
        j = j + 2;
    else
        w(j) = v(i);
        j = j + 1;
    end
end
end