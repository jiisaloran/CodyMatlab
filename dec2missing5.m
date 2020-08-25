% Cody: 44375. Missing five.

function y = dec2missing5(x)
 y = num2str(dec2base(x,9));
 for i = 1:length(y)
    if str2num(y(i))>4
       y(i) = y(i) + 1;
    end
 end
 
end
