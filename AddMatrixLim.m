% Matlab Cody
% Problem 2240. Sum the 'edge' values of a matrix
function y = AddMatrixLim(x)
 y = sum(x(1,2:end));
 for ii=1:3
    x = rot90(x);
    y = y + sum(x(1,2:end));
 end
end
