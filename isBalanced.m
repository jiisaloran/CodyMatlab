function a = isBalanced(n)
  k = str2num(regexprep(num2str(n),'([0-9])','$1 '));
  a = sum(k(1:floor(numel(k)/2)))==sum(k(end-floor(numel(k)/2)+1:end));
end
