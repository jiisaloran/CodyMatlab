function b = matchPattern(a)
  s = sign(diff(a,1,2));
  b = [];
  for i = 2:size(s,1)
      if isequal(s(1,:), s(i,:))
          b = [b, i];
      end
  end

end