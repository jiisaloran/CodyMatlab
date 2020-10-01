% Matlab CODY
% Problem 2869. There are 10 types of people in the world
% Calculate how many more years it will be until the next year that is a binary palindrome. 

function y = yearraey(x)
y = 0;
while 1
   s = dec2bin(x+y);
   if strcmp(s, s(end:-1:1))
      break
   end
   y = y + 1;
end
end
