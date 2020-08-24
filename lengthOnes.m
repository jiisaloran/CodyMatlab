function y = lengthOnes(x)
  a = x(1)-48;
  for i = 2:length(x)
         a(i) = (a(i-1)+1)*(x(i)-48);
  end
  y = max(a);
end


