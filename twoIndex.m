function v = twoIndex(M,a,b)
  v = M(sub2ind(size(M),a,b));
end