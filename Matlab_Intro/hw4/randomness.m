function result = randomness(limit, n, m)
result = floor(1 + rand(n, m) * limit);
end