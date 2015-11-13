function sum = halfsum(A)
sum = 0;
for i = 1:size(A,1)
    for j = i:size(A,2)
        sum = sum + A(i,j);
    end
end
end