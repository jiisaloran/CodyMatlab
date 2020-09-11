% Matlab Cody
% Problem 1755. Fix the last element of a cell array
function A = puzzler(A,B)
  i = strcmp(A,B);
  if any(i)
      A(i) = [];
      A{end+1} = B;
  end
end
