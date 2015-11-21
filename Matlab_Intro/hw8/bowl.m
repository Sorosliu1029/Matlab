function score = bowl(g)
score = 0;
i = 1;
fn = 0;
bonus = [];
bn = 0;
if any(g < 0 | g > 10)
    score = -1;
    return;
end
while i<=length(g)
    if fn < 10
        if g(i) == 10
            fn = fn + 1;
            i = i + 1;        
            f.t = 2;
            f.b1 = 10;
            f.b2 = 0;
            fr(fn) = f;
        elseif g(i) < 10
            if i == length(g)
                score = -1;
                return;
            else
                if g(i) + g(i+1) == 10                
                    fn = fn + 1;
                    f.t = 1;
                    f.b1 = g(i);               
                    f.b2 = g(i+1);
                    fr(fn) = f;
                    i = i + 2;
                elseif g(i) + g(i+1) < 10                
                    fn = fn + 1;
                    f.t = 0;
                    f.b1 = g(i);
                    f.b2 = g(i+1);
                    fr(fn) = f;
                    i = i + 2;
                else
                    score = -1;
                    return;
                end
            end
        end
    else
        bn = bn + 1;
        bonus(bn) = g(i);
        i = i + 1;
    end
end
if fn < 10 || (fr(10).t == 0 && length(bonus) ~= 0) || ...
        (fr(10).t == 1 && length(bonus) ~= 1) || ...
        (fr(10).t == 2 && length(bonus) ~= 2)
    score = -1;
    return;
end
for i =1:8
    if fr(i).t == 0
        score = score + fr(i).b1 + fr(i).b2;
    elseif fr(i).t == 1
        score = score + 10 + fr(i+1).b1;
    elseif fr(i).t == 2
        score = score + 10 + fr(i+1).b1;
        if fr(i+1).t == 2
            score = score + fr(i+2).b1;
        else
            score = score + fr(i+1).b2;
        end
    end
end
if fr(9).t == 0
    score = score + fr(9).b1 + fr(9).b2;
elseif fr(9).t == 1
    score = score + 10 + fr(10).b1;
elseif fr(9).t == 2
    score = score + 10 + fr(10).b1;
    if fr(10).t == 2
        score = score + bonus(1);
    else 
        score = score + fr(10).b2;
    end
end
if fr(10).t == 0
    score = score + fr(10).b1 + fr(10).b2;
elseif fr(10).t == 1
    score = score + 10 + bonus(1);
elseif fr(10).t == 2
    score = score + 10 + sum(bonus);
end
% score = score + sum(bonus);
end