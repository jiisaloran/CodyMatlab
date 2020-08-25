function y = popularity(x)
  [k,l] = unique(x);
  [a,~] = histc(x,k);
  [~,n] = sort(a, 'descend');
  y = x(l(n));
end