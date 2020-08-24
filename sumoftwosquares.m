%Cody: 44319. Write c^3 as sum of two squares a^2+b^2
function y = sumoftwosquares(c)
    y = [];
    c3 = c^3;
    for l = 2:floor(sqrt(c3))-1
        s = sqrt(c3-(l^2));
        if rem(s,1)==0
            y = [y; sort([l s])];
        end
    end
    y = unique(y,'rows');
end