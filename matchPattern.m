function b = matchPattern(a)
  s = sign(diff(a(1,:)));
  b = [];
  for i = 2:size(a,1)
      if all(s==sign(diff(a(i,:))))
          b  = [b i];
      end
  end

end
