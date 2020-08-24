function t = read_and_interp(s)
for i = 1:length(s)-1
  t(i) = str2num(s{i+1}(4:end));
end

if any(t==9999)
    n = 1:length(t);
    m = t~=9999;
    t = interp1(n(m), t(m), 1:length(t));
end

