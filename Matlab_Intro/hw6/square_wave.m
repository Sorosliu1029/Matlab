function sums = square_wave(n)
sums = zeros(1, 1001);
dis = 0:(4*pi)/1000:(4*pi);
for i=1:1001
    for j=1:n
        sums(i) = sums(i) + sin((2 * j - 1) * dis(i)) / (2 * j - 1);
    end
end
end