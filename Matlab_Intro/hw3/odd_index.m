function odd_m = odd_index(M)
odd_row_m = M(1:2:size(M, 1),:);
odd_m = odd_row_m(:, 1:2:size(M, 2));
end
