function s2 = refcn2(s1)
  %Matlab Cody 22: Remove the vowels
  s2 = regexprep(s1, '(?![aeiou])[a-z]', '', 'ignorecase');
end