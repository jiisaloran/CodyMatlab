function flag = isTherePythagoreanTriple(a, b, c, d)
  k = [a b c d].^2;
  
  flag = any([a^2+b^2==[c^2 d^2], [a^2 b^2]+c^2==d^2]);
end