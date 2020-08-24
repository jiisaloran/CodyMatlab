function outlier = spot_the_outlier(pts)
q = (pts(2:end,1)-pts(1,1))./(pts(2:end,2)-pts(1,2));

M = find(q>=max(q)-eps);
m = find(q<=min(q)+eps);

if length(m)==1 && length(M)==1
  outlier = 1;
elseif length(m)==1
    outlier=m+1;
else
    outlier=M+1;
end


end