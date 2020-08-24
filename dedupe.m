function b = dedupe(a)
  % Remove all the redundant elements in a vector, 
  % but keep the first occurrence of each value in its original location.
  [c,ia,~] = unique(a);
  [~,ib] = sort(ia);
  b = c(ib);
end