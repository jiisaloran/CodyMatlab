function y = two_mean(x)
  for i = 1:(length(x)-1)
    y(i) = mean(x(i,i+1));
  end
end