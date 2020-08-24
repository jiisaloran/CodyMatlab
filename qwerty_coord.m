function [r,c] = qwerty_coord(key)

  i  = key==double(['1234567890';'qwertyuiop';'asdfghjkl ';'zxcvbnm   ']);
  [r,c] = ind2sub([4,10],find(i));
  
end
