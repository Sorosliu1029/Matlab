function p = prime_pairs(n)
if mod(n,2) == 1
    if isprime(n+2)
        p = 2;
    else
        p = -1;
    end
else
    pr = primes(100000);
    r = isprime(pr+n);
    if sum(r)
        [~, i] = max(r);
        p = pr(i);
    end
end
end