function b = find_palindrome(a)
  s = num2str(a);
  if strcmp(s,fliplr(s))
     b = a;
  else
     a = a + str2num(fliplr(s));
     b = find_palindrome(a);
  end
end
