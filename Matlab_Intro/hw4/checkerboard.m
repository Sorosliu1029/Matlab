function board = checkerboard(n, m)
board = zeros(n, m);
for i = 1:n
    for j = 1:m
        board(i,j) = mod((i+j+1),2);
    end
end
end