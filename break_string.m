% Matlab Cody
% Problem 967. Split a string into chunks of specified length
function y = break_string(s, b)

if sum(b) == length(s)
   y = mat2cell(s,[1], b);
else
   % Extra characters leftover at the end should be dropped.
   b(end+1) = length(s) - sum(b);
   y = mat2cell(s,[1], b);
   y(end) = [];
end

end
