function ix = mostDistant(p)
d = 0;
for i = 1:size(p,1)-1
    for j = (i+1):size(p,1)
        n = sum((p(i,:)-p(j,:)).^2);
        if n > d
            ix = [i j];
            d = n;
        end
    end
end

end