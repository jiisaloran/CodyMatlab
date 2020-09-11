% Matlab Cody
% Problem 2300. Natural numbers in string form
% Create a cell array of strings containing the first n natural numbers.  
function y = naturalnumbers(x)
  y = cellfun(@num2str, mat2cell(1:x, 1, ones(1,x)),'UniformOutput',false);
end
