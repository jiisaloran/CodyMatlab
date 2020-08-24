function outStr = cypher2(inStr, shift)
  inStr = double(inStr)+shift;
  a = double('a');
  z = double('z');
  inStr(inStr>z) = inStr(inStr>z)-26;
  inStr(inStr<a) = inStr(inStr<a)+26;
  outStr = char(inStr);
end
