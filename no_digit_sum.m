function total = no_digit_sum(n,m)
  
  total = sum(str2num(regexprep(num2str(1:n), ['\w*' num2str(m) '\w*'], '')));
  
end
