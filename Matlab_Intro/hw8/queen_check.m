function no_check = queen_check(board)
sum_row = sum(board, 1);
sum_col = sum(board, 2);
sum_d1 = zeros(1, 15);
sum_d2 = zeros(1, 15);
for i=-7:7
    sum_d1(i+8) = sum(diag(board, i));
end
board = fliplr(board);
for i=-7:7
    sum_d2(i+8) = sum(diag(board, i));
end
if any(sum_row > 1) || any(sum_col > 1) || any(sum_d1 > 1) || any(sum_d2 > 1)
    no_check = false;
else
    no_check = true;
end
end