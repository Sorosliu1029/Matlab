function result = identity(n)
result = zeros(n);
for i = 1:n
    result(i,i) = 1;
end
end