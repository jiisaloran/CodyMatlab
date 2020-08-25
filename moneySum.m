function b = moneySum(a)
 %a = {'$12,001.87','$0.04','$103,887.55','$0.32'};
  b =  sum(cellfun(@str2num,regexprep(a, '[\$,]', '')));
end

