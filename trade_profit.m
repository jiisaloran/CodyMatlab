function y = trade_profit(x)
  y = min(find(cumsum(sort(x,'descend'))>=sum(x)));
end
