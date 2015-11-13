function B = divvy(A, k)
di_index = mod(A, k);
B = ones(size(A));
B(di_index == 0) = A(di_index == 0);
B(di_index ~= 0) = A(di_index ~= 0) * k;
end