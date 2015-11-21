function [row,col,numrows,numcols,summa] = maxsubsum(A)
s = size(A);
row = 1; col = 1;
numrows = s(1); numcols = s(2);
summa = sum(A(:));
rn = s(1); cn = s(2);
for i=1:rn
    for j=1:cn
        for nr=1:rn-i+1
            for nc=1:cn-j+1            
                s = sum(sum(A(i:nr-1+i,j:nc-1+j)));
                if s > summa
                    summa = s;
                    row = i; col = j;
                    numrows = nr;
                    numcols = nc;
                end
            end
        end
    end
end
end