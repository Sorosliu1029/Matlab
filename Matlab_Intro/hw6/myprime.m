function result = myprime(n)
for i=2:fix(sqrt(n))
    if rem(n,i) == 0
        result = false;
        return
    end
end
result = true;
end