%Cody: 760. Duplicate each element of a vector.
function y = duplicate(x)
  %y=[1 1]'*x;
  %y=y(:)';
  y = kron(x,[1 1]);
end