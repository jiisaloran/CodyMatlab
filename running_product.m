function i = running_product(s)
  v = str2num(regexprep(s, '([0-9])', ' $1'));
  for k = 1:length(v)-4
      q(k)=prod(v(k:k+4));
  end
  [j,i] = max(q);
end
