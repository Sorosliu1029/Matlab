function indices = saddle(M)
s = size(M);
[max_per_row] = max(M, [], 2);
[min_per_col] = min(M, [], 1);
indices = [];
for j=1:s(2)
    for i=1:s(1)
        if M(i,j) >= max_per_row(i) && M(i,j) <= min_per_col(j)
            indices = [indices; [i, j]];
        end
    end
end
end