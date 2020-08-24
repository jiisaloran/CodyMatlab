function dups = duplicates(strs)
i = 0;
dumps = {};
for j = 1:length(strs)
    ind = find(strcmp(strs, strs{j}));
    if length(ind)>1
        i = i+1;
        dumps{i} = strs{ind(1)};
    end
end
dups = unique(dumps);
end
