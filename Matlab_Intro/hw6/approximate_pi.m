function [p, k] = approximate_pi(delta)
p = 0;
k = -1;
while abs(p - pi) > delta
    k = k + 1;
    p =  p + sqrt(12) / (2 * k + 1) * (-3) ^ (-1 * k);
end
end