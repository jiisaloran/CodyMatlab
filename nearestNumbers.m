function [index1, index2] = nearestNumbers(A)
[i,k] = sort(A);
[~,j] = min(diff(i));
index1 = min([k(j) k(j+1)]);
index2 = max([k(j) k(j+1)]);
end
