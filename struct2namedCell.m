% Matlab Cody
% Problem 152. Create a cell array out of a struct

function C = struct2namedCell(S)
  N = fieldnames(S);
  for ii = 1:length(N)
     C(ii,:) = [N(ii), {S.(N{ii})}];
  end
end
