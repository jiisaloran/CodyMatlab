 function y = threeTimes(x)
 % Return a list of all values (sorted smallest to largest) that appear 
 % exactly three times in the input vector x. 
 
  b = sort(x);
  a = diff(sort(x));
  r = strfind(a, [0 0 0]);
  a(r+1) = 1;
  y = b(strfind(a, [0 0]));
  
 end
