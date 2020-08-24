function b = most_change(a)
  [~, b] = max(a*[.25 .05 .1 .01]');
end


% function b = most_change(a)
%   a = sum(a.*repmat([.25 .05 .1 .01], size(a,1),1),2);
%   [~, b] = max(a);
% end