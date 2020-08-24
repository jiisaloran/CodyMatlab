function s2 = remAin(s1)
  s2 = regexprep(s1, '(\w*ain\>)', '');
end