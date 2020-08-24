%Cody; Problem 78. Implement a ROT13 cipher
function s1 = rot13(s1)
  l = s1>='a' & s1<='z';
  u = s1>='A' & s1<='Z';
  s1(l) = char('a'+mod(s1(l)+13-'a',26));
  s1(u) = char('A'+mod(s1(u)+13-'A',26));
end