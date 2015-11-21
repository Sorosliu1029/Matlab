function bt = bell(n)
if n < 1 || (n-fix(n))~=0
    bt = [];
    return;
end
bt = zeros(n,n);
bt(1,1) = 1;
if n ==1
    return;
end
for i =2:n
    bt(i,1) = bt(1,i-1);
    for j=2:i
        bt(i+1-j,j) = bt(i+1-j,j-1) + bt(i+2-j,j-1);
    end
end
end
    