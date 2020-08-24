function ans = which_doors_open(n)
y = ones(n,n);
for i = 2:n
    v = repmat([zeros(1,i-1) 1],1,n);
    y(i,:) = v(1:n);
end

find(mod(sum(y),2))
