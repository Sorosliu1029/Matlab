function [even, odd] = separate_by_two(A)
mod_index = mod(A,2);
even = A(mod_index == 0)';
odd = A(mod_index == 1)';
end