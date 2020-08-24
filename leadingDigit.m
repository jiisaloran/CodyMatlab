function y = leadingDigit(x)
  for i = 1:length(x)
    s = num2str(x(i));
    j = regexp(s, '[1-9]');
    y(i) = str2num(s(j(1)));
  end
end