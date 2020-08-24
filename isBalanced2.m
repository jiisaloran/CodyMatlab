function tf = isBalanced2(n)
  k = num2str(n);
  s = double(k);
  tf = sum(s(1:round(length(k)/2)))==sum(s(round((length(k)+1)/2):end));
end
