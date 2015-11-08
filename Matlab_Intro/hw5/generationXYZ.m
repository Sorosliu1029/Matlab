function gen = generationXYZ(y)
if y < 1966
    gen = 'O';
elseif y < 1981
    gen = 'X';
elseif y < 2000
    gen = 'Y';
elseif y < 2013
    gen = 'Z';
else 
    gen = 'K';
end
end