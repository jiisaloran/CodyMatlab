%Cosy: 44334. Sums of Multiple Pairs of Triangular Numbers
function y = multi_triangular(x)

s = [1];
while s(end)<x
   s = [s; nchoosek(length(s)+2,2)];
end

[i,j]=find(s+s'==x);
y = [s(j(1:ceil(end/2))),s(i(1:ceil(end/2)))]';

end
