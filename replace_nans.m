function y = replace_nans(x)
for i = 1:length(x)
    if isnan(x(i))
        if i == 1
            y(i) = 0;
        else
            y(i) = y(i-1);
        end
    else
        y(i) = x(i);
    end
end
end
