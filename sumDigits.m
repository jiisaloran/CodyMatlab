function b = sumDigits(n)
  s = num2str(2^n);
  b = 0;
  for i = 1:length(s)
     b = b + str2num(s(i));
  end
end