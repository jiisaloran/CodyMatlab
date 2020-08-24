function zSorted = complexSort(z)
  for v = 1:length(z);
    l(v) = norm(z(v));
  end
  [~,k] = sort(l);
  zSorted = z(k(end:-1:1));
end