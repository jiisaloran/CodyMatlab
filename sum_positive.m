function y = sum_positive(x, window)
%Problem 731. Given a window, how many subsets of a vector sum positive
  S = zeros(length(x)-window+1, length(x)-window+1);
  for i = 1:length(x)-window+1
      S(i,i:i+window-1) = 1;
  end
  y = sum(S*x'>0);
end