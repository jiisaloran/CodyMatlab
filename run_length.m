function r = run_length(x)
  r(1) = 1;
  for i = 2:length(x)
      if x(i)==x(i-1)
          r(i) = r(i-1)+1;
      else
          r(i) = 1;
      end
  end
end