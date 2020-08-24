function score = scoreOrderedDominoes(list, order)
  score = sum(abs(list(order(1:end-1),2)-list(order(2:end),1)));
end