function result = sort3(a, b, c)
result = ones(1, 3);
if a < b
    if a < c
        result(1) = a;
        if b < c
            result(2:3) = [b, c];
        else
            result(2:3) = [c, b];
        end
    else
        result= [c, a, b];
    end
else
    if b < c
        result(1) = b;
        if a < c
            result(2:3) = [a, c];
        else
            result(2:3) = [c, a];
        end
    else
        result = [c, b, a];
    end
end
end
    
        
    