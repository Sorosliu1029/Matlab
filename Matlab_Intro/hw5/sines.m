function [s1, s2, sums] = sines(pts, amp, n1, n2)
if nargin < 3, n1 = 100; end
if nargin < 4, n2 = n1 * (1 + 0.05); end
if nargin < 2, amp = 1; end
if nargin == 0, pts = 1000; end
s1 = ones(1, pts);
s2 = ones(1, pts);
s1 = amp * sin(0:(2*pi*n1 / (pts-1)):2*pi*n1);
s2 = amp * sin(0:(2*pi*n2 / (pts-1)):2*pi*n2);
sums = s1 + s2;
end