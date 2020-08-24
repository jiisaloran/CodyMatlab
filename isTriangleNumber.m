function y = isTriangleNumber(x)
%Problem 139. Determine if a Given Number is a Triangle Number
   y = floor(sqrt(8.*x+1))==sqrt(8.*x+1);
   %y = mod(sqrt(8 * x + 1), 1) == 0;
end