%Cody #795: Joining Ranges
function y = joinRanges(x)


x = sortrows(sort(x,2));
y(1,:) = x(1,:);

l = 1;
for k = 2:size(x,1)
    if x(k,1)>y(l,2)
        l = l+1;
        y(l,:) = [x(k,:)];
    else
        if x(k,2)>y(l,2)
            y(l,2) = x(k,2);
        end
    end
end

end
