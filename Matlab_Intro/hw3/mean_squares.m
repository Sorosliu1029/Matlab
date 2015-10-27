function mm = mean_squares(nn)
n = 1:nn;
mm = sum(n .^ 2) / nn;
end