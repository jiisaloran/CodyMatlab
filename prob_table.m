function p = prob_table(x)
  [a,~] = hist(x,1:max(x));
  p = a./sum(a);
end