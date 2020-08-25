function y = nearZero(x)
  v1 = ([1 x]==0);
  v2 = ([x 1]==0);
  y = max(x(v1(1:end-1)|v2(2:end)));
end
