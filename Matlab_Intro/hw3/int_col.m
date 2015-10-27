function v = int_col(n)
v = ones(n ,1);
v(1:n-1) = 2:n;
v(n) = 1;
end