% Cody: 44375. Missing five.
% Brute force solution...

function y = dec2missing5(x)
  y = 0;
  while x
     y = y + 1;
     x = x - 1;
     if any(strfind(num2str(y),'5'))
        x = x + 1;
     end
  end
end
