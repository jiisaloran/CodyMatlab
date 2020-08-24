function y = incrementor(x)
  s = str2num(regexprep(num2str(x),' ','')) + 1;
  y = str2num(sprintf('%c ', num2str(s)));
end