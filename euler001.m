% Matlab Cody
% Problem 230. Project Euler: Problem 1, Multiples of 3 and 5

function y = euler001(x)
  % Find the sum of all the multiples of 3 or 5 below the input value.
  y = sum(unique([3:3:x-1 5:5:x-1]));

  %X = 1:(x-1);
  %y = sum(unique([X(mod(X,3)==0) X(mod(X,5)==0)]));

end
