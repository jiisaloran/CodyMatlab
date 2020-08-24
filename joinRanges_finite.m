%Cody #795: Joining Ranges
function y = joinRanges_finite(x)
x = sort(x,2);
X = [];
for i = 1:length(x)
   X = [X, x(i,1):x(i,2)];
end
X = unique(X);
j = find(diff(X)-1);

if isempty(j)
   y = [X(1) X(end)];
   return
end

y(1,:) = [X(1) X(j(1))];
for k = 1:length(j)-1
   y(k+1,1:2) = [X(j(k)+1) X(j(k+1))];
end
y(k+2,1:2) = [X(j(k+1)+1) X(end)];
end
