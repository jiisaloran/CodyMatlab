% Matlab Cody
% Problem 967. Split a string into chunks of specified length
function y = break_string(s, b)

   y = mat2cell(s(1:sum(b)), [1], b);

end
