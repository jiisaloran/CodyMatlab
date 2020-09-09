% Matlab Cody
% Problem 380. Convert a numerical matrix into a cell array of strings 
function output = matrix2cell(input)
  output = num2cell(string(input));
end