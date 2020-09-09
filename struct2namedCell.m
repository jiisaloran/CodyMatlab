% Matlab Cody
% Problem 152. Create a cell array out of a struct

function C = struct2namedCell(S)
  C = [fieldnames(S) struct2cell(S)];
end
