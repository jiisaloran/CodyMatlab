function y = parasitic(x,n)
  s=num2str(n*x);
  y = str2num([s(2:end) s(1)])==x;
end