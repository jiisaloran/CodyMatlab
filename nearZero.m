function y = nearZero(x)
    ind = find(x==0);
    ind = [ind-1 ind+1];
    ind = ind(ind>0&ind<length(x)+1);
	y = max(x(ind));
end