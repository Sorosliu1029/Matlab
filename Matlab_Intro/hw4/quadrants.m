function result = quadrants(n)
result = ones(2*n, 2*n);
result(1:n,n+1:2*n) = 2 * ones(n,n);
result(n+1:2*n,1:n) = 3 * ones(n,n);
result(n+1:2*n,n+1:2*n) = 4 * ones(n,n);
end