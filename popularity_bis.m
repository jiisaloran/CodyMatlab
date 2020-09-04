% Matlab Cody
% Problem 875. Return a list sorted by number of consecutive occurrences

function y = popularity_bis(x)

c = 1;
g = x(1);
for ii = 2:length(x)
   if x(ii) == x(ii-1)
      c(end) = c(end) + 1;
   else
      c(end+1) = 1;
      g(end+1) = x(ii);
   end
end

% q = sort(unique(c), 'descend');
% y = [];
% for ii = 1:length(q)
%    v = g(c==q(ii));
%    [w, ~] = sort(v, 'ascend');
%    y = [y, w];
% end

y = sortrows([c', g'], [-1, 2]);
y = y(:,2)';

end
