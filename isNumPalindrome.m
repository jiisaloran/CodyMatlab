% Matlab Cody
% Problem 172. Test if a Number is a Palindrome without using any String Operations
function y = isNumPalindrome(x)
  l = floor(log10(x));
  y = 1;
  for i = l:-1:ceil(l/2)
     l = floor(log10(x));
     y = y&&floor(x / 10^l)==mod(x,10);
     x = (x - floor(x / 10^l)*10^l - mod(x,10))/10;
  end
end
