function xi = split_it(x)
sdone = 0;
for io = [2:length(x) 1]
    
    ni = nchoosek(1:length(x), io);
    for ip = 1:length(ni)
        if sum(x(ni(ip,:)))==(sum(x)/2)
            xi = ni(ip,:);
            sdone = 1;
            break;
        end
    end
    if sdone
        break;
    end
end

end