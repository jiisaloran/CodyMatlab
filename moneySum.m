function sum = moneySum(a)
  b = regexp(a,'[0-9]');
  sum = 0;
  for i=1:length(b)
      sum = sum + str2double(a{i}(b{i}))/100;
  end
end